<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 06/08/2022
  Time: 10:03 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css2/stylecarousel.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="resources/js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="resources/css2/sweet-alert.css">
    <link rel="stylesheet" href="resources/css2/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="resources/css2/normalize.css">
    <link rel="stylesheet" href="resources/css2/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="resources/css2/styles.css">
    <script>window.jQuery || document.write('<script src="resources/js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources/js/main.js"></script>
    <title>Document</title>
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
            <h1 class="all-tittles"> Sistema de Prestamos <small>Solicitudes</small></h1>
        </div>
    </div>
    <div class="container container-flat-form">
        <table class="table table-bordered table-hover ">
            <thead>
            <tr class="border border-white border-4">
                <div class="container-fluid solicitudes title-flat-form">
                    Bandeja de solicitudes (0 solicitudes pendientes)
                </div>
            </tr>
            <tr style="background-color:#5bc3ad;">
                <div>
                    <td colspan="2" style="color:black;" class="solicitudes border border-white">
                        <div class="category centro"> <strong> - </strong></div>
                    </td>
                    <td style="color:black;" class="solicitudes border border-white">
                        <div class="category centro"> <strong> Usuario </strong></div>
                    </td>
                    <td colspan="3" style="color:black;" class="solicitudes border border-white">
                        <div class="category centro"> <strong> Dispositivo </strong></div>
                    </td>

                </div>
            </tr>
            <tr class="category solicitudes" style="">
                <div>
                    <td class="category solicitudes border border-white border-4">
                        <div class="category solicitudes">Id</div>
                    </td>
                    <td class="category solicitudes border border-white border-4">
                        <div class="category solicitudes">Estado</div>
                    </td>
                    <td class="category solicitudes border border-white border-4">
                        <div class="category solicitudes">Nombre</div>
                    </td>
                    <td class="category solicitudes border border-white border-4">
                        <div class="category solicitudes">Nombre</div>
                    </td>
                    <td class="category solicitudes border border-white border-4">
                        <div>Restantes</div>
                    </td>
                </div>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="request">
                <a href="get-request?id=${request.id}">
            <tr>
                <th scope="row"><c:out value="${request.id}"/></th>
                <td><c:out value="${request.estado}"/></td>
                <td><c:out value="${request.nom_usuario}"/></td>
                <td><c:out value="${request.nom_dispositivo}"/></td>
                <td><c:out value="${request.restantes}"/></td>
            </tr>
                </a>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="container-fluid">
        <div class="container-flat-form">
            <div class="title-flat-form" style="background-color:#009574;">Dispositivo</div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información básica</legend><br>
                        <div class="div-table ">
                            <div class="div-table-row div-table-head">
                                <div class="div-table-cell">#</div>
                                <div class="div-table-cell">Campo</div>
                                <div class="div-table-cell">Valor</div>
                            </div>
                            <div class="div-table-row">
                                <div class="div-table-cell">1</div>
                                <div class="div-table-cell">Id</div>
                                <div class="div-table-cell"></div>
                            </div>
                            <div class="div-table-row">
                                <div class="div-table-cell">2</div>
                                <div class="div-table-cell">Nombre dispositivo</div>
                                <div class="div-table-cell"></div>
                            </div>
                            <div class="div-table-row">
                                <div class="div-table-cell">3</div>
                                <div class="div-table-cell">Categoría</div>
                                <div class="div-table-cell"></div>
                            </div>
                            <div class="div-table-row">
                                <div class="div-table-cell">4</div>
                                <div class="div-table-cell">Descripción</div>
                                <div class="div-table-cell"></div>
                            </div>
                            <div class="div-table-row">
                                <div class="div-table-cell">5</div>
                                <div class="div-table-cell">Restantes</div>
                                <div class="div-table-cell"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="container-flat-form">
            <div class="title-flat-form" style="background-color:#009574;">Usuario</div>
            <div class="container">
                <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información básica</legend><br>
                <div class="row">
                    <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                        <strong> Nombre:   </strong>
                    </div>
                    <br>
                    <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                        <strong> Apellido paterno:    </strong>
                    </div>
                    <br>
                    <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                        <strong> Apellido materno:    </strong>
                    </div>
                    <br>
                    <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                        <strong> Id:    </strong>
                    </div>
                </div>
                <div style="padding-top:25px;">
                    <a data-bs-toggle="collapse" href="#collapse1" role="button" aria-expanded="false"
                       aria-controls="collapse1">
                        <div class="dropdown-menu-buttons">
                            <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Más información</legend><br><i
                                class="zmdi zmdi-chevron-down pull-right zmdi-hc-fw icon-sub-menu"></i>
                        </div>
                    </a>
                    <div class="collapse" id="collapse1">
                        <div class="card card-body">

                            <div class="row">
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Correo:   </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> División:    </strong>
                                </div>
                                <br>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Teléfono:    </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> División:    </strong>
                                </div>
                                <br>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> cp:    </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Municipio:    </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Colonia:    </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Número:    </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Calle:   </strong>
                                </div>
                                <div style="margin-bottom: 10px;" class="container col-5 border border-success rounded">
                                    <strong> Estado:    </strong>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="container">
                        <div class="col-xs-12">
                            <p class="text-center">
                                <button type="reset" class="btn btn-danger" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false" aria-controls="collapse2" style="margin-right: 20px;"><i
                                        class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Rechazar</button>
                                <button type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i>
                                    &nbsp;&nbsp; Conceder</button>
                            </p>
                            <div class="collapse" id="collapse2">
                                <div class="card card-body">
                                    <form action="">
                                        <div class="input-group input-group-lg">
                                            <span class="input-group-text" id="inputGroup-sizing-lg">Razón</span>
                                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                                        </div>
                                        <br>
                                        <button class="btn btn-danger" type="submit">Enviar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="resources/js/carousel.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

</body>

</html>
