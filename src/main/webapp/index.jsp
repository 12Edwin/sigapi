<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio de sesión</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="css/sweet-alert.css">
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="css/style.css">
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body>
<c:if test="${sessionScope.containsKey('name')}">
    <c:if test="${sessionScope.containsKey('admin')}">
        <c:redirect url="list-devices" />
    </c:if>
    <c:if test="${sessionScope.containsKey('user')}">
        <c:redirect url="request" />
    </c:if>
</c:if>

<div class="login-container full-cover-background">
    <div class="form-container">
        <p class="text-center" style="margin-top: 17px;">
            <i class="zmdi zmdi-account-circle zmdi-hc-5x"></i>
        </p>
        <h4 class="text-center all-tittles" style="margin-bottom: 30px;">inicia sesión con tu cuenta</h4>
        <form action="login" method="post">
            <div class="group-material-login">
                <c:if test="${param['message']!=null}">
                    <c:if test="${param['message']=='error'}">
                        <div class="alert alert-warning" role="alert">
                            Usuario y/o contraseña incorrectas
                        </div>
                    </c:if>
                </c:if>
                <input id="floatingInput" name="nickname" type="email" class="material-login-control" required="" maxlength="70">
                <span class="highlight-login"></span>
                <span class="bar-login"></span>
                <label><i class="zmdi zmdi-account"></i> &nbsp; Nombres</label>
            </div><br>
            <div class="group-material-login">
                <input id="floatingPassword" name="password" type="password" class="material-login-control" required="" maxlength="70">
                <span class="highlight-login"></span>
                <span class="bar-login"></span>
                <label><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</label>
            </div>
            <div class="group-material">
                <select class="material-control-login">
                    <option value="" disabled="" selected="">Tipo de usuario</option>
                    <option value="Teacher">Docente</option>
                    <option value="Personal">Personal administrativo</option>
                </select>
            </div>
            <button class="btn-login" type="submit">Ingresar al sistema &nbsp; <i class="zmdi zmdi-arrow-right"></i></button>
        </form>
    </div>
</div>
</body>
</html>