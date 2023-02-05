<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Смена пароля учетной записи</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="styles/authorization/auth-style.css" />
    </head>
    <body class="login_servlet">
        <div class="main_area">
            <div class="forms">
                <div class="title">Смена пароля учетной записи</div>
                <div class="sub-title">Введите данные для смены пароля</div>
                <div class="splitter1"></div>
                <form method="post" action="change-password?action=validate-password">
                    <div class="input-frame">
                        <input name="username" type="text" placeholder="Введите логин учетной записи" class="input" value="system"/>
                    </div>
                    <div class="input-frame">
                        <input name="old_password" type="password" placeholder="Введите старый пароль" class="input"/>
                    </div>
                    <div class="input-frame">
                        <input name="new_password1" type="password" placeholder="Введите новый пароль" class="input"/>
                    </div>
                    <div class="input-frame">
                        <input name="new_password2" type="password" placeholder="Повторный ввод нового пароля" class="input"/>
                    </div>
                    <input type="submit" class="button" id="submit" value="Сменить пароль"/>
                </form>
                <input onclick="window.location.href='change-password?action=rollback';" type="button" class="button" style="background-color: #FFC340;" value="Вернуться в окно авторизации"/>
            </div>
        </div>
    </body>
</html>