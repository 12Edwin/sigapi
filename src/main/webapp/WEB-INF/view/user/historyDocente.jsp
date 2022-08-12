<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 12/08/2022
  Time: 09:21 a. m.
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
    <div class="container">
        <div class="page-header">
            <h1 style="font-size: 30px ;">Historial</h1>
        </div>
    </div>

    <div class="container-fluid"  style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3 text-center">
                <img src="https://cdn-icons-png.flaticon.com/512/365/365301.png" alt="prestamos" class="img-fluid" style="max-width: 120px;">
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 text-center lead">
                Bienvenido a esta sección, aquí se muestra el Historial de prestamos realizados
            </div>
        </div>
    </div>

    <h2 class="text-center all-tittles">Listado de préstamos</h2>
    <div class="container-fluid container-flat-form ">
        <div class="table-responsive ">
            <div class="div-table " style="margin:0 !important;">
                <div class="div-table-row div-table-row-list " style="background-color:#009574; font-weight:bold;">
                    <div class="div-table-cell" style="width: 6%;">#</div>
                    <div class="div-table-cell" style="width: 22%;">Id dispositivo</div>
                    <div class="div-table-cell" style="width: 22%;">Id docente</div>
                    <div class="div-table-cell" style="width: 10%;">Categoria</div>
                    <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                    <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                    <div class="div-table-cell" style="width: 8%;">Eliminar</div>
                </div>
            </div>
        </div>
        <div class="table-responsive ">
            <div class="div-table" style="margin:0 !important;">
                <div class="div-table-row div-table-row-list">
                    <div class="div-table-cell" style="width: 6%;">#</div>
                    <div class="div-table-cell" style="width: 22%;">Id dispositivo</div>
                    <div class="div-table-cell" style="width: 22%;">Id de docente</div>
                    <div class="div-table-cell" style="width: 10%;">Categoria</div>
                    <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                    <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                    <div class="div-table-cell" style="width: 8%;">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                    <div class="div-table-cell" style="width: 0%;">
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <div class="div-table" style="margin:0 !important;">
                <div class="div-table-row div-table-row-list">
                    <div class="div-table-cell" style="width: 6%;">#</div>
                    <div class="div-table-cell" style="width: 22%;">Id dispositivo</div>
                    <div class="div-table-cell" style="width: 22%;">Id de docente</div>
                    <div class="div-table-cell" style="width: 10%;">Categoria</div>
                    <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                    <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                    <div class="div-table-cell" style="width: 8%;">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                    <div class="div-table-cell" style="width: 0%;">
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <div class="div-table" style="margin:0 !important;">
                <div class="div-table-row div-table-row-list">
                    <div class="div-table-cell" style="width: 6%;">#</div>
                    <div class="div-table-cell" style="width: 22%;">Id dispositivo</div>
                    <div class="div-table-cell" style="width: 22%;">Id de docente</div>
                    <div class="div-table-cell" style="width: 10%;">Categoria</div>
                    <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                    <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                    <div class="div-table-cell" style="width: 8%;">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                    <div class="div-table-cell" style="width: 0%;">
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <div class="div-table" style="margin:0 !important;">
                <div class="div-table-row div-table-row-list">
                    <div class="div-table-cell" style="width: 6%;">#</div>
                    <div class="div-table-cell" style="width: 22%;">Id dispositivo</div>
                    <div class="div-table-cell" style="width: 22%;">Id de docente</div>
                    <div class="div-table-cell" style="width: 10%;">Categoria</div>
                    <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                    <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                    <div class="div-table-cell" style="width: 8%;">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                    <div class="div-table-cell" style="width: 0%;">
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <div class="div-table" style="margin:0 !important;">
                <div class="div-table-row div-table-row-list">
                    <div class="div-table-cell" style="width: 6%;">#</div>
                    <div class="div-table-cell" style="width: 22%;">Id dispositivo</div>
                    <div class="div-table-cell" style="width: 22%;">Id de docente</div>
                    <div class="div-table-cell" style="width: 10%;">Categoria</div>
                    <div class="div-table-cell" style="width: 10%;">F. Solicitud</div>
                    <div class="div-table-cell" style="width: 10%;">F. Entrega</div>
                    <div class="div-table-cell" style="width: 8%;">
                        <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                    </div>
                    <div class="div-table-cell" style="width: 0%;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="resources2/js/sidebar.js"></script>

</body>
</html>