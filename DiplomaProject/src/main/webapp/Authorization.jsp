<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Вход в приложение</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" type="text/css" href="styles/authorization/auth-style.css" />
    </head>
    <body class="login_servlet">
        <div class="main_area">
            <div class="forms">
                <div class="title">
                    Вход в приложение
                </div>
                <div class="sub-title">
                    Для входа в приложение, Вам необходимо авторизоваться
                </div>
                <div class="splitter1"></div>

                <form method="post" action="main">
                    <div class="input-frame">
                        <input class="input" name="username" type="text" placeholder="Имя (чувствительно к регистру):" value="system" />
                    </div>
                    <div class="input-frame">
                        <input class="input" name="password" type="password" autocomplete="off" placeholder="Пароль (чувствителен к регистру):" />
                    </div>
                    <input type="submit" value="Войти" id="std-form-submit" class="button" />
                </form>
                <div class="tools">
                    <a href="change-password?action=open-form" class="tool">Сменить локальный пароль</a>
                </div>
            </div>
        </div>

    </body>
</html>