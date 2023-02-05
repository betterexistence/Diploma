<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="styles/bootstrap-4.4.1.css" rel="stylesheet">
    <link href="styles/main/main.css" rel="stylesheet">
    <link href="styles/main/tree-view.css" rel="stylesheet">
    <link href="styles/main/content.css" rel="stylesheet">
    <title>Дипломный проект</title>
</head>
<body>

    <div id="header">
        <div class="exit-button">
            <a href="authorization" >
                <img width="50" height="50" src="${pageContext.request.contextPath}/images/main/log-out.png"/>
            </a>
        </div>
    </div>

    <div class="splitter">
        <div id="menu">
            <nav class="nav-menu">
                <input placeholder="Поиск..." class="nav-search" type="text"/>
                <div class="container">
                    <details open="open">
                        <summary>myproject</summary>
                        <div class="folder">
                            <p>app.py</p>
                            <p>package.json</p>
                            <details open="open">
                                <summary>static</summary>
                                <div class="folder">
                                    <details>
                                        <summary>css</summary>
                                        <div class="folder">
                                            <p>index.css</p>
                                            <p>template.css</p>
                                        </div>
                                    </details>
                                    <details open="open">
                                        <summary>js</summary>
                                        <div class="folder">
                                            <p>index.js</p>
                                            <p>jquery-min.js</p>
                                        </div>
                                    </details>
                                    <details>
                                        <summary>img</summary>
                                        <div class="folder">
                                            <p>banner.png</p>
                                            <p>foo.png</p>
                                        </div>
                                    </details>
                                </div>
                            </details>
                            <details open="open">
                                <summary>templates</summary>
                                <div class="folder">
                                    <p>index.html</p>
                                    <p>template.html</p>
                                </div>
                            </details>
                        </div>
                    </details>
                </div>
            </nav>
        </div>

        <div id="separator"></div>

        <div id="content">
            <div class="toolbar">
                <a href="#">
                    <img class="image-toolbar" src="${pageContext.request.contextPath}/images/main/add-entry.png"/>
                </a>
                <a href="#">
                    <img class="image-toolbar" src="${pageContext.request.contextPath}/images/main/edit-entry.png"/>
                </a>
                <a href="#">
                    <img class="image-toolbar" src="${pageContext.request.contextPath}/images/main/delete-entry.png"/>
                </a>
            </div>
            <table border=1>
                <thead>
                <tr>
                    <th>User Id</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>DOB</th>
                    <th>Email</th>
                    <th colspan=2>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td><c:out value="${user.userid}"/></td>
                        <td><c:out value="${user.firstName}"/></td>
                        <td><c:out value="${user.lastName}"/></td>
                        <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}"/></td>
                        <td><c:out value="${user.email}"/></td>
                        <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Update</a></td>
                        <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>

</body>

<script>
    function dragElement(element, direction)
    {
        var   md;
        const first  = document.getElementById("menu");
        const second = document.getElementById("content");

        element.onmousedown = onMouseDown;

        function onMouseDown(e)
        {
            md = {e,
                offsetLeft:  element.offsetLeft,
                offsetTop:   element.offsetTop,
                firstWidth:  first.offsetWidth,
                secondWidth: second.offsetWidth
            };

            document.onmousemove = onMouseMove;
            document.onmouseup = () => {
                document.onmousemove = document.onmouseup = null;
            }
        }

        function onMouseMove(e)
        {
            var delta = {x: e.clientX - md.e.clientX,
                y: e.clientY - md.e.clientY};

            if (direction === "H" )
            {
                delta.x = Math.min(Math.max(delta.x, -md.firstWidth),
                    md.secondWidth);

                element.style.left = md.offsetLeft + delta.x + "px";
                first.style.width = (md.firstWidth + delta.x) + "px";
                second.style.width = (md.secondWidth - delta.x) + "px";
            }
        }
    }


    dragElement( document.getElementById("separator"), "H" );

</script>
</html>
