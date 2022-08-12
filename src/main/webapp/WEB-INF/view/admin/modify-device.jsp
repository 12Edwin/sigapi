<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 07/08/2022
  Time: 06:30 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Descripciones del dispositivo </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="resources/assets/icons/book.ico" />
    <script src="resources/js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="resources/css/sweet-alert.css">
    <link rel="stylesheet" href="resources/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="resources/css/normalize.css">
    <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">

    <link rel="stylesheet" href="resources/css/style.css">
    <script>window.jQuery || document.write('<script src="resources/js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="resources/js/modernizr.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources/js/main.js"></script>
</head>

<body>
<div class="navbar-lateral full-reset">
    <div class="visible-xs font-movile-menu mobile-menu-button"></div>
    <div class="full-reset container-menu-movile nav-lateral-scroll">
        <div class="logo full-reset all-tittles">
            <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button"
               style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i>
            SIGAPI
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset" style="padding: 10px 0; color:#fff;">
            <figure>
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/54/Logo-utez.png"
                     class="img-responsive center-box" style="width:55%;">
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
                <img src="resources/assets/img/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
            </figure>
            <li style="color:#fff; cursor:default;">
                <span class="all-tittles">Administrador</span>
            </li>
            <li class="tooltips-general exit-system-button" data-href="logout" data-placement="bottom"
                title="Salir del sistema">
                <i class="zmdi zmdi-power"></i>
            </li>
            <li class="desktop-menu-button hidden-xs" style="float: left !important;">
                <i class="zmdi zmdi-menu"></i>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="page-header">
            <h1 class="all-tittles"> Descripción del dispositivo <small></small></h1>
        </div>
    </div>
    <div class="container-fluid" style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <img src="https://www.lifeder.com/wp-content/uploads/2017/12/Dispositivos-de-comunicaci%C3%B3n.jpg"
                     class="img-responsive center-box" style="max-width: 110px;">
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                Bienvenido a la sección para Modificar los detalles del dispositivo
            </div>
        </div>
    </div>

    <div aling="right" class="container-fluid">
        <div class="container-flat-form">
            <div class="title-flat-form" style="background-color:#009574;">Descripcion del dispositivo </div>
            <form action="update-device" method="post" enctype="multipart/form-data" class="form-padding">
                <div class="row">
                    <div aling="left">
                        <img src="images?id=${deviceX.id}" class="img-responsive center-box" style="max-width: 350px;">
                        <center><input value="${deviceX.imagen}" type="file" name="imagen" class="form-control" id="file-product"></center>
                    </div>
                    <div aling="right" class="col-xs-12">
                        <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información básica</legend><br>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="group-material">
                            <input name="id" value="${deviceX.id}" type="text" class="tooltips-general material-control" required=""
                                   maxlength="20" data-toggle="" data-placement="top" >
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Id</label>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <div class="group-material">
                            <input name="nombre" value="${deviceX.nombre}" type="text" class="tooltips-general material-control" required=""
                                   maxlength="20" data-toggle="" data-placement="top" >
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nombre</label>
                        </div>
                    </div>
                </div>

                <div class="col-g-20 col-sm-50">
                    <div class="group-material">
                        <input name="descripcion" value="${deviceX.descripcion}" type="text" class="tooltips-general material-control"
                               placeholder="Escribe una descripcion breve del dispositivo" required="" maxlength="70"
                               data-toggle="tooltip" data-placement="top" title="Escribe la descripcion">
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label>Descripcion del dispositivo </label>
                    </div>
                </div>
                <div class="col-g-20 col-sm-50">
                    <div class="group-material">
                        <input name="noTotal" value="${deviceX.unidades_total}" type="text" class="tooltips-general material-control"
                               placeholder="Número de dispositivos" required="" maxlength="70"
                               data-toggle="tooltip" data-placement="top" title="Escribe la descripcion">
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label>Total de unidades </label>
                    </div>
                </div>
                <div class="col-g-20 col-sm-50">
                    <div class="group-material">
                        <input name="restantes" value="${deviceX.noDisponible}" type="text" class="tooltips-general material-control"
                               placeholder="Número de dispositivos" required="" maxlength="70"
                               data-toggle="tooltip" data-placement="top" title="Escribe la descripcion">
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label>Unidades disponibles </label>
                    </div>
                </div>
                <div class="col-g-20 col-sm-50">
                    <div class="group-material">
                        <label for="category-product" class="from-label">Categorias</label>
                        <select name="IdClasificacion" id="category-product" class="form-select">
                            <option <c:if test="${deviceX.idClasificacion == 1}"> selected </c:if> value="1">Equipo de computo</option>
                            <option <c:if test="${deviceX.idClasificacion == 2}"> selected </c:if> value="2">Equipo de telefonía</option>
                            <option <c:if test="${deviceX.idClasificacion == 3}"> selected </c:if> value="3">Equipo de red</option>
                            <option <c:if test="${deviceX.idClasificacion == 4}"> selected </c:if> value="4">Equipo de audio</option>
                            <option <c:if test="${deviceX.idClasificacion == 5}"> selected </c:if> value="5">Equipo de video</option>
                            <option <c:if test="${deviceX.idClasificacion == 6}"> selected </c:if> value="6">Consumibles</option>
                        </select>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label>Unidades disponibles </label>
                    </div>
                </div>
                <div class="col-xs-12">
                    <p class="text-center">
                        <button type="submit" class="btn btn-success"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp;
                            Guardar
                        </button>
                    </p>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</body>

</html>
