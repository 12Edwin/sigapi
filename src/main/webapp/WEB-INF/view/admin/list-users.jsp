<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 06/08/2022
  Time: 07:41 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Docentes</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="resources/assets/icons/book.ico" />
    <script src="resources/js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="resources/css/sweet-alert.css">
    <link rel="stylesheet" href="resources/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="resources/css/normalize.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script>window.jQuery || document.write('<script src="resources/js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources/js/main.js"></script>
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
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/54/Logo-utez.png" class="img-responsive center-box" style="width:55%;">
            </figure>
            <p class="text-center" style="padding-top: 15px;">Sistema de Prestamos y Gestion de Inventario</p>
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset nav-lateral-list-menu">
            <ul class="list-unstyled">
                <li><a href="start-admin"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Inicio</a></li>
                <li><a href="teacher.html"><i class="zmdi zmdi-account-add zmdi-hc-fw"></i>&nbsp;&nbsp; Agregar nuevo docente</a></li>

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

            <li  class="tooltips-general exit-system-button" data-href="logout" data-placement="bottom" title="Salir del sistema">
                <i class="zmdi zmdi-power"></i>
            </li>
            <li class="desktop-menu-button hidden-xs" style="float: left !important;">
                <i class="zmdi zmdi-menu"></i>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="page-header">
            <h1 class="all-tittles">Sistema de prestamos  <small>Administración Usuarios</small></h1>
        </div>
    </div>
    <div class="conteiner-fluid">
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="resources/assets/img/user02.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
            </div>
        </div>
        <h2 class="text-center all-tittles" style="clear: both; margin: 25px 0;">Listado de docentes</h2>
        <div class="table-responsive container-flat-form container-fluid" >
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list" style="background-color:#009574; font-weight:bold;">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 15%;">Id</div>
                        <div class="div-table-cell" style="width: 15%;">Division</div>
                        <div class="div-table-cell" style="width: 15%;">Apellidos</div>
                        <div class="div-table-cell" style="width: 15%;">Nombres</div>
                        <div class="div-table-cell" style="width: 12%;">Teléfono</div>
                        <div class="div-table-cell" style="width: 9%;"> </div>
                    </div>
                </div>
            </div>
            <c:forEach items="${list}" var="user">
                <c:if test="${user.idRol!=1}">
            <div class="table-responsive">
                <div class="div-table" style="margin:0 !important;">
                    <div class="div-table-row div-table-row-list">
                        <div class="div-table-cell" style="width: 6%;">#</div>
                        <div class="div-table-cell" style="width: 15%;"><c:out value="${user.id}"/></div>
                        <div class="div-table-cell" style="width: 15%;"><c:out value="${user.division}"/> </div>
                        <div class="div-table-cell" style="width: 15%;"><c:out value="${user.apellidoP}"/></div>
                        <div class="div-table-cell" style="width: 15%;"><c:out value="${user.nombre}"/></div>
                        <div class="div-table-cell" style="width: 12%;"><c:out value="${user.telefono}"/></div>
                        <div class="div-table-cell" style="width: 9%;">
                            <button class="btn btn-success"><i class="zmdi zmdi-refresh"></i></button>
                        </div>
                        <div class="div-table-cell" style="width: 9%;">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                </div>
            </div>
                </c:if>
            </c:forEach>
        </div>
    </div>

</div>
</body>
</html>
