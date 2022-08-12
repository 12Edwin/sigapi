<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 04/08/2022
  Time: 10:00 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Inicio</title>
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
            <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button"
               style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i>
            SIGAPI
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset" style="padding: 10px 0; color:#fff;">
            <figure>
                <img src="https://upload.wikimedia.org/wikipedia/commons/5/54/Logo-utez.png" alt="Prestamos"
                     class="img-responsive center-box" style="width:55%;">
            </figure>
            <p class="text-center" style="padding-top: 15px;">Sistema de Prestamos y Gestion de Inventario</p>
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset nav-lateral-list-menu">
            <ul class="list-unstyled">
                <li><a href="home.html"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Inicio</a></li>

                <li>
                    <div class="dropdown-menu-button"><i class="zmdi zmdi-account-add zmdi-hc-fw"></i>&nbsp;&nbsp;
                        Registro de usuarios <i
                                class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw icon-sub-menu"></i></div>
                    <ul class="list-unstyled">
                        <li><a href="teacher.html"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; Nuevo
                            docente</a></li>

                    </ul>
                </li>
                <li>
                    <div class="dropdown-menu-button"><i class="zmdi zmdi-assignment-o zmdi-hc-fw"></i>&nbsp;&nbsp;
                        Categorias <i class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw icon-sub-menu"></i></div>
                    <ul class="list-unstyled">
                        <li><a href="inventory"><i class="zmdi zmdi-book "></i> Equipo de computo </a></li>
                        <li><a href="inventory"><i class="zmdi zmdi-book"></i> Telefonia </a></li>
                        <li><a href="inventory"><i class="zmdi zmdi-book"></i> Equipo de red </a></li>
                        <li><a href="inventory"><i class="zmdi zmdi-book"></i> Audio </a></li>
                        <li><a href="inventory"><i class="zmdi zmdi-book"></i> Video </a></li>
                        <li><a href="inventory"><i class="zmdi zmdi-book"></i> Consumibles </a></li>
                    </ul>
                </li>
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
            <h1 class="all-tittles">Sistema de Prestamos </h1>
        </div>
    </div>
    <section class="full-reset text-center" style="padding: 40px 0;">
        <article class="tile">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-face"></i></div>
            <div class="tile-name all-tittles">administradores</div>
            <div class="tile-num full-reset">1</div>
        </article>

        <article class="tile"><a href="inventory">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-assignment "></i></div>
            <div class="tile-name all-tittles">Inventario</div>
            <div class="tile-num full-reset"><c:out value="${devicesX}"/></div>
        </a>
        </article>
        <article class="tile"> <a href="list-users">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-male-alt"></i></div>
            <div class="tile-name all-tittles">Docentes </div>
            <div class="tile-num full-reset"><c:out value="${usersX}"/></div>
        </a>
        </article>

        <article class="tile"><a href="list-sanctions">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-time-restore"></i></div>
            <div class="tile-name all-tittles" style="width: 90%;">Sanciones</div>
            <div class="tile-num full-reset">0</div>
        </a>
        </article>
        <article class="tile">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-calendar"></i></div>
            <div class="tile-name all-tittles">Préstamos activos</div>
            <div class="tile-num full-reset">0</div>
        </article>
        <article class="tile"><a href="history">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-assignment-o"></i></div>
            <div class="tile-name all-tittles">Historial</div>
            <div class="tile-num full-reset">0</div>
        </a>
        </article>
        <article class="tile"><a href="list-requests">
            <div class="tile-icon full-reset"><i class="zmdi zmdi-assignment-o"></i></div>
            <div class="tile-name all-tittles">Solicitudes</div>
            <div class="tile-num full-reset">0</div>
        </a>
        </article>
    </section>
</div>
</body>

</html>
