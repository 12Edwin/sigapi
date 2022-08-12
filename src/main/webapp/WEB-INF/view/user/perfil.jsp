<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 12/08/2022
  Time: 09:22 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrarse</title>
    <link rel="stylesheet" href="resources2/css/stylesign.css">
</head>

<body class="register">
<div class="container">
    <form action="#">
        <h1><center>Modifica tu usuario</center></h1>
        <div class="user-details">
            <div class="input-box">
                <span class="details">Nombre(s)</span>
                <input type="text" required maxlength="30">
            </div>
            <div class="input-box">
                <span class="details">Apellido Paterno</span>
                <input type="text" required maxlength="15">
            </div>
            <div class="input-box">
                <span class="details">Apellido Materno</span>
                <input type="text" required maxlength="15">
            </div>
            <div class="input-box">
                <span class="details">Matricula</span>
                <input type="text" required maxlength="10" style="text-transform: uppercase;">
            </div>
            <div class="input-box">
                <span class="details">Correo</span>
                <input type="email" required maxlength="40">
            </div>
            <div class="input-box">
                <span class="details">Division Académica</span>
                <select name="division" id="division">
                    <option value="0">*</option>
                    <option value="1">DATIC</option>
                    <option value="2">DAMI</option>
                    <option value="3">DATEFI</option>
                    <option value="4">DAE</option>
                </select>
            </div>
            <div class="input-box">
                <span class="details">CURP</span>
                <input type="text" required maxlength="18" style="text-transform: uppercase;">
            </div>
            <div class="input-box">
                <span class="details">Teléfono</span>
                <input type="text"  maxlength="10">
            </div>
            <div class="input-box">
                <span class="details">Calle</span>
                <input type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">Número</span>
                <input type="text"  maxlength="4">
            </div>
            <div class="input-box">
                <span class="details">Colonia</span>
                <input type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">Municipio</span>
                <input type="text" required maxlength="40">
            </div>
            <div class="input-box">
                <span class="details">Código Postal</span>
                <input type="text" required maxlength="5">
            </div>
            <div class="input-box">
                <span class="details">Estado</span>
                <input type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">País</span>
                <input type="text" required maxlength="20">
            </div>
            <div class="input-box">
                <span class="details">Contraseña</span>
                <input type="password" required maxlength="30">
            </div>
        </div>
        <div class="button">
            <input type="submit" value="Registrarse">
        </div>
    </form>
</div>
</body>

</html>
