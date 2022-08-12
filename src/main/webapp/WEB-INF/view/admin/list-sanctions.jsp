<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 07/08/2022
  Time: 11:53 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="resources2/assets/icons/book.ico" />
    <script src="resources2/js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="resources2/css/sweet-alert.css">
    <link rel="stylesheet" href="resources2/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="resources2/css/normalize.css">
    <link rel="stylesheet" href="resources2/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources2/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="resources2/css/style.css">
    <script>window.jQuery || document.write('<script src="resources2/js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="resources2/js/bootstrap.min.js"></script>
    <script src="resources2/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources2/js/main.js"></script>
</head>
<body>
<div class="navbar-lateral full-reset">
    <div class="visible-xs font-movile-menu mobile-menu-button"></div>
    <div class="full-reset container-menu-movile nav-lateral-scroll">
        <div class="logo full-reset all-tittles">
            <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i>
            SIGAPI
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset" style="padding: 10px 0; color:#fff;">
            <figure>
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/54/Logo-utez.png"  class="img-responsive center-box" style="width:55%;">
            </figure>
            <p class="text-center" style="padding-top: 15px;">Sistema de Prestamos y Gestion de Inventario
            </p>
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset nav-lateral-list-menu">
            <ul class="list-unstyled">
                <li><a href="start-admin"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Inicio</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="content-page-container full-reset custom-scroll-containers">
    <nav class="navbar-user-top full-reset">
        <ul class="list-unstyled full-reset">
            <figure>
                <img src="resources2/assets/img/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
            </figure>
            <li style="color:#fff; cursor:default;">
                <span class="all-tittles">Administrador</span>
            </li>
            <li  class="tooltips-general exit-system-button" data-href="login.html" data-placement="bottom" title="Salir del sistema">
                <i class="zmdi zmdi-power"></i>
            </li>
            <li class="desktop-menu-button hidden-xs" style="float: left !important;">
                <i class="zmdi zmdi-menu"></i>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="page-header">
            <h1 class="all-tittles"> Sistema de Prestamos <small>Añadir Sansión</small></h1>
        </div>
    </div>
    <div class="container-fluid"  style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <img src="https://www.lifeder.com/wp-content/uploads/2017/12/Dispositivos-de-comunicaci%C3%B3n.jpg" alt="pdf" class="img-responsive center-box" style="max-width: 110px;">
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                Bienvenido a la sección para agregar una nueva sansión , debes llenar todos los campos para poder completar el registro.
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="container-flat-form">
            <div class="title-flat-form" style="background-color:#009574;">Nueva sansión </div>
            <form class="form-padding">
                <div class="row">
                    <div class="col-xs-12">
                        <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información básica</legend><br>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe el ID del dispositivo" pattern="[0-9]{1,20}" required="" maxlength="20" data-toggle="tooltip" data-placement="top" title="Solamente números">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>ID</label>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe el nombre del dispositivo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el nombre">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nombre del dispositivo dañado</label>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe una descripcion breve del dispositivo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe la descripcion">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Descrpcion de la sansión </label>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="group-material">
                            <input type="text" class="tooltips-general material-control" placeholder="Escribe una descripcion breve del dispositivo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe la descripcion">
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nombre del usuario </label>
                        </div>
                    </div>



                    <div class="col-xs-12">
                        <legend><i class="zmdi zmdi-bookmark-outline"></i> &nbsp; Categoría</legend><br>
                    </div>
                    <div class="col-xs-12">
                        <div class="group-material">
                            <span>Categoría</span>
                            <select class="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige la categoría del dispositivo">
                                <option value="" disabled="" selected="">Selecciona una categoría</option>
                                <option value="categoria">Equipo de computo</option>
                                <option value="categoria">Telefonia      </option>
                                <option value="categoria">Equipo de red  </option>
                                <option value="categoria">   Audio       </option>
                                <option value="categoria">   Video       </option>
                                <option value="categoria">   Consumibles </option>

                            </select>
                        </div>
                    </div>

                    <div class="col-xs-12">
                        <p class="text-center">
                            <button type="reset" class="btn btn-danger style="margin-right: 20px;><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Borrar</button>
                            <button type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                            <button type="reset" class="btn btn-success style="margin-right: 20px;><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp;<a href="sansiones.html"class="link-light">  Nueva</a></button>
                            <button type="reset" class="btn btn-danger style="margin-right: 20px;><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp;  <a href="listadocentes.html"class="link-light"> Suspender Cuenta </a></button>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
