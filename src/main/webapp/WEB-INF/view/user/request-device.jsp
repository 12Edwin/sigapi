<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 12/08/2022
  Time: 09:25 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <title>Descripciones del dispositivo </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="Shortcut Icon" type="image/x-icon" href="resources2/assets/icons/book.ico" />
  <link rel="stylesheet" href="resources2/css/sweet-alert.css">
  <link rel="stylesheet" href="resources2/css/material-design-iconic-font.min.css">
  <link rel="stylesheet" href="resources2/css/normalize.css">
  <link rel="stylesheet" href="resources2/css/styleslider.css">
  <link rel="stylesheet" href="resources2/css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <link rel="stylesheet" href="resources2/css/style.css">

</head>
<body>
<nav class="sidebar close">
  <header>
    <div class="image-text">

      <div class="text logo-text">
        <span class="name">SIGAPI</span>
      </div>

    </div>

    <i class='zmdi zmdi-menu toggle'></i>
  </header>
  <div class="menu-bar">
    <div class="menu">
      <figure style="background-color:  #8fe3b882; text-align: center;">
        <img src="https://upload.wikimedia.org/wikipedia/commons/5/54/Logo-utez.png" alt="utez" class="img-responsive " style="width:55%;" >
      </figure>
      <ul class="menu-links">
        <li class="nav-link">
          <a href="start-user">
            <i class='zmdi zmdi-home icon'></i>
            <span class="text nav-text">Inicio</span>
          </a>
        </li>

        <li class="nav-link">
          <a href="historyDocente">
            <i class='zmdi zmdi-storage icon'></i>
            <span class="text nav-text">Historial</span>
          </a>
        </li>
        <li class="nav-link">
          <a href="perfil">
            <i class='zmdi zmdi-account icon'></i>
            <span class="text nav-text">Perfil</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="bottom-content">
      <li class="">
        <a href="logout">
          <i class='zmdi zmdi-close icon'></i>
          <span class="text nav-text">Cerrar sesión</span>
        </a>
      </li>
    </div>
  </div>
</nav>
<div class="home">
  <div aling="right" class="container-fluid">
    <div class="container-flat-form">
      <div class="title-flat-form" style="background-color:#009574;">Descripcion del dispositivo </div>
      <form class="form-padding">
        <div class="row">
          <div class="text-center img-fluid">
            <img src="https://images.samsung.com/is/image/samsung/mx-t35f-lf27t350fhlxzx-frontblack-308825262?$650_519_PNG$"style="max-width: 350px;">
          </div   >
          <div aling="right" class="col-xs-12">
            <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información básica</legend><br>
          </div>
          <div class="col-xs-12 col-sm-6" style="padding-top: 20px;">
            <div class="group-material">
              <input type="text" class="tooltips-general material-control" pattern="[0-9]{1,20}" required="" maxlength="20" data-toggle="" data-placement="top" >
              <span class="highlight"></span>
              <span class="bar"></span>
              <label>ID</label>
            </div>

          </div>

        </div>

        <div class="col-g-20 col-sm-50">
          <div class="group-material">
            <input type="text"  class="tooltips-general material-control" required="" maxlength="70" data-toggle="tooltip" data-placement="top">
            <span class="highlight"></span>
            <span class="bar"></span>
            <label>Descripcion del dispositivo </label>
          </div>
        </div>

    </div>





  </div>

  <div  class="col-xs-12">
    <p class="text-center" style="padding: 50px ;">
      <a class=" btn btn-success" href="WEB-INF/view/user/start-user.jsp">
        Solicitar
      </a>
    </p>
  </div>
</div>
</form>

</div>
</div>
<script src="resources2/js/sidebar.js"></script>

</body>
</html>
