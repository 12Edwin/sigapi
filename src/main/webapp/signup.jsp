<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 04/08/2022
  Time: 10:30 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrarse</title>
    <link rel="stylesheet" href="resources/css2/style.css">
</head>

<body class="register">
<c:if test="${sessionScope.containsKey('name')}">
    <c:if test="${sessionScope.containsKey('admin')}">
        <c:redirect url="start-admin" />
    </c:if>
    <c:if test="${sessionScope.containsKey('user')}">
        <c:redirect url="start-user" />
    </c:if>
</c:if>
<div class="container">
    <form action="signup"method="post">
        <h1><center>Crea tu usuario</center></h1>
        <center>

        </center>
        <div class="user-details">
            <div class="input-box">
                <span class="details">Nombre(s)</span>
                <input name="nombre" type="text" required maxlength="30">
            </div>
            <div class="input-box">
                <span class="details">Apellido Paterno</span>
                <input name="apellidoP" type="text" required maxlength="15">
            </div>
            <div class="input-box">
                <span class="details">Apellido Materno</span>
                <input name="apellidoM" type="text" required maxlength="15">
            </div>
            <div class="input-box">
                <span class="details">Matricula</span>
                <input name="matricula" type="text" required maxlength="10" style="text-transform: uppercase;">
            </div>
            <div class="input-box">
                <span class="details">Correo</span>
                <input name="correo" type="email" required maxlength="40">
            </div>
            <div class="input-box">
                <span class="details">Division Académica</span>
                <select name="idDivision" id="division">
                    <option value="0">*</option>
                    <option value="1">DATIC</option>
                    <option value="2">DAMI</option>
                    <option value="3">DATEFI</option>
                    <option value="4">DAE</option>
                </select>
            </div>
            <div class="input-box">
                <span class="details">CURP</span>
                <input name="curp" type="text" required maxlength="18" style="text-transform: uppercase;">
            </div>
            <div class="input-box">
                <span class="details">Teléfono</span>
                <input name="telefono" type="text"  maxlength="10">
            </div>
            <div class="input-box">
                <span class="details">Calle</span>
                <input name="calle" type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">Número</span>
                <input name="numero" type="text"  maxlength="4">
            </div>
            <div class="input-box">
                <span class="details">Colonia</span>
                <input name="colonia" type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">Municipio</span>
                <input name="municipio" type="text" required maxlength="40">
            </div>
            <div class="input-box">
                <span class="details">Código Postal</span>
                <input name="cp" type="text" required maxlength="5">
            </div>
            <div class="input-box">
                <span class="details">Estado</span>
                <input name="estado" type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">País</span>
                <input name="pais" type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">Contraseña</span>
                <input name="pass" type="password" required maxlength="30">
            </div>
        </div>
        <div class="button">
            <input type="submit" value="Registrarse">
        </div>
    </form>
</div>
</body>

</html>
