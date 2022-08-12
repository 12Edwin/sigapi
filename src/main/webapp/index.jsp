<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css2/style.css">
</head>
<body class="login">
<c:if test="${sessionScope.containsKey('name')}">
    <c:if test="${sessionScope.containsKey('admin')}">
        <c:redirect url="start-admin" />
    </c:if>
    <c:if test="${sessionScope.containsKey('user')}">
        <c:redirect url="start-user" />
    </c:if>
</c:if>
<form action="login" method="post" class="form-box">
    <h1 class="title">Ingresa tus datos</h1>
    <c:if test="${param['message']!=null}">
    <c:if test="${param['message']=='error'}">
        <div class="alert alert-warning" role="alert">
            Usuario y/o contraseña incorrectas
        </div>
    </c:if>
    </c:if>
    <c:if test="${param['message']!=null}">
        <c:if test="${param['message']=='ok'}">
            <div class="alert alert-success" role="alert">
                Cuenta registrada correctamente
            </div>
        </c:if>
    </c:if>
    <input type="email" name="nickname" class="info" placeholder="Correo" required>
    <input type="password" name="password" class="info" placeholder="Contraseña" required>
    <button type="submit" class="btn">Iniciar Sesión</button>
    <span>¿No tienes una cuenta?</span>
    <span  class="link"><a href=signup.jsp>Regístrate</a></span>
</form>
</body>
</html>