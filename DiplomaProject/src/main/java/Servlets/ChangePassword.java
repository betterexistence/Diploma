package Servlets;

import javafx.scene.control.Alert;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/change-password")
public class ChangePassword extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action){
            case "open-form":
                req.getRequestDispatcher("/ChangePassword.jsp").forward(req,resp);
                break;
            case "validate-password":
                    doPost(req,resp);
                break;
            case "rollback":
                req.getRequestDispatcher("/Authorization.jsp").forward(req,resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Alert alert = new Alert(Alert.AlertType.INFORMATION);
//        alert.setTitle("Аккаунт создан");
//        alert.setHeaderText(null);
//        alert.setContentText("Аккаунт успешно создан");
//        alert.showAndWait();
        //validationForm(req, resp);
        req.getRequestDispatcher("/Authorization.jsp").forward(req,resp);
    }
}
