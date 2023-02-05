package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/main")
public class Main extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //проверить логин и пароль со страницы авторизации, если подходят, то осуществить вход в аккаунт
        String login = req.getParameter("username");
        String password = req.getParameter("password");
        //создать метод, который будет искать username в списке users, после чего сопостовлять пароль
        if(login.equals("system") && password.equals("masterkey")){
            req.getRequestDispatcher("Main.jsp").forward(req,resp);
        }else{
            req.getRequestDispatcher("Authorization.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
