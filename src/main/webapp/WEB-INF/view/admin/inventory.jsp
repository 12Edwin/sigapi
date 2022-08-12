<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 09/08/2022
  Time: 07:20 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/stylecarousel.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="resources/js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="resources/resources/css/sweet-alert.css">
    <link rel="stylesheet" href="resources/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="resources/css/normalize.css">
    <link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="resources/css/style.css">
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
        <div class="logo full-reset all-tittles" style="padding: 10px;">
            SIGAPI
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset" style="padding: 10px ;">
            <figure>
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/54/Logo-utez.png" alt="Prestamos" class="img-fluid center-box" style="width:auto;">
            </figure>
            <p  style="padding-top: 15px; text-align: center; color: white;">Sistema de Prestamos y Gestion de Inventario</p>
        </div>
        <div class="nav-lateral-divider full-reset"></div>
        <div class="full-reset nav-lateral-list-menu">
            <ul class="list-unstyled">
                <li><a href="start-admin"><i class="zmdi zmdi-home zmdi-hc-fw"></i>&nbsp;&nbsp; Inicio</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="content-page-container full-reset custom-scroll-containers" >
    <nav class="navbar-user-top full-reset">
        <ul class="list-unstyled full-reset">
            <figure>
                <img src="resources/assets/img/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
            </figure>
            <li style="color:#fff; cursor:default;">
                <span class="all-tittles">Adminstradores
                </span>
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
            <h1 class="all-tittles"><small>Inventario</small></h1>
        </div>
    </div>
    <div>
        <div class="home">

            <div>
                <c:forEach items="${listCategory}" var="category">
                    <div class="tittle"><c:out value="${category.nombre}"/></div>
                <div class="container">
                    <div class="swiper-container mySwiper">
                        <div class="swiper-wrapper">
                            <c:forEach items="${listDevice}" var="device">
                                <c:if test="${[category.id] == [device.idClasificacion]}">
                            <div class="swiper-slide">
                                <img src="images?id=${device.id}" class="rounded mx-auto d-block img-fluid">
                                <div class="card-body">

                                    <h6 style="padding: 15px; text-align: left;"><c:out value="${device.nombre}"/></h6>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <a href="get-device?idDevice=${device.id}" class="btn btn-primary">
                                            Modificar
                                        </a>
                                        <a href="delete-device?id=${device.id}" class="btn btn-danger" type="button">
                                            Eliminar
                                        </a>
                                    </div>

                                </div>
                            </div>
                                </c:if>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>


        </div>
        <div style="padding: 50px;">
            <a class="btn"  style="background-color:#009574; color: white;" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" >
                Agregar Dispositivo
            </a>


        </div>
        <div class="collapse" id="collapseExample">

            <div class="container-fluid"  style="margin: 50px 0;">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-3">
                        <img src="https://www.lifeder.com/wp-content/uploads/2017/12/Dispositivos-de-comunicaci%C3%B3n.jpg" class="img-responsive center-box" style="max-width: 250px;">
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-8 text-right lead">
                        Bienvenido a la sección para agregar nuevo dispositivo, debes llenar todos los campos para poder completar el registro.
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="container-flat-form">
                    <div class="title-flat-form" style="background-color:#009574;">Nuevo dispositivo</div>
                    <form action="save-device" method="post" class="form-padding" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-xs-12">
                                <legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información básica</legend><br>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="group-material">
                                    <input name="nombre" type="text" class="tooltips-general material-control" placeholder="Escribe el nombre del dispositivo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe el nombre">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Nombre del dispositivo</label>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="group-material">
                                    <input name="descripcion" type="text" class="tooltips-general material-control" placeholder="Escribe una descripcion breve del dispositivo" required="" maxlength="70"  title="Escribe la descripcion">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Descripcion</label>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="group-material">
                                    <input name="totalUnidades" type="text" class="tooltips-general material-control" placeholder="Escribe una descripcion breve del dispositivo" required="" maxlength="70" data-toggle="tooltip" data-placement="top" title="Escribe la descripcion">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Total de unidades</label>
                                </div>
                            </div>

                            <div class="col-xs-12">
                                <legend><i class="zmdi zmdi-bookmark-outline"></i> &nbsp; Categoría</legend><br>
                            </div>
                            <div class="col-xs-12">
                                <div class="group-material">
                                    <span>Categoría</span>
                                    <select name="idCategoria" class="tooltips-general material-control" data-toggle="tooltip" data-placement="top" title="Elige la categoría del dispositivo">
                                        <option value="" disabled="" selected="">Selecciona una categoría</option>
                                        <option value="1">Equipo de computo</option>
                                        <option value="2">Telefonia      </option>
                                        <option value="3">Equipo de red  </option>
                                        <option value="4">   Audio       </option>
                                        <option value="5">   Video       </option>
                                        <option value="6">   Consumibles </option>

                                    </select>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="file-product" class="form-label">Foto del dispositivo:</label>
                                <input type="file" name="photo" class="form-control" id="file-product">
                            </div>
                            <div class="col-xs-12">
                                <p class="text-center">
                                    <button type="reset" class="btn btn-danger" style="margin-right: 20px;"><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Borrar</button>
                                    <button type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                </p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>



            <div class="container-fluid">
                <div class="title-flat-form" style="background-color:#009574;">Categorias</div>
                <div class="div-table ">
                    <div class="div-table-row div-table-head">
                        <div class="div-table-cell">#</div>
                        <div class="div-table-cell">IdCategoria</div>
                        <div class="div-table-cell">Categorias</div>
                        <div class="div-table-cell">Eliminar</div>
                    </div>
                    <div class="div-table-row">
                        <div class="div-table-cell">1</div>
                        <div class="div-table-cell">Id</div>
                        <div class="div-table-cell">Equipo de computo</div>

                        <div class="div-table-cell">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                    <div class="div-table-row">
                        <div class="div-table-cell">2</div>
                        <div class="div-table-cell">Id</div>
                        <div class="div-table-cell">Telefonia</div>

                        <div class="div-table-cell">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                    <div class="div-table-row">
                        <div class="div-table-cell">3</div>
                        <div class="div-table-cell">Id</div>
                        <div class="div-table-cell">Equipo de red</div>

                        <div class="div-table-cell">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                    <div class="div-table-row">
                        <div class="div-table-cell">4</div>
                        <div class="div-table-cell">Id</div>
                        <div class="div-table-cell">Audio</div>

                        <div class="div-table-cell">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                    <div class="div-table-row">
                        <div class="div-table-cell">5</div>
                        <div class="div-table-cell">Id</div>
                        <div class="div-table-cell">Video</div>

                        <div class="div-table-cell">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                    <div class="div-table-row">
                        <div class="div-table-cell">6</div>
                        <div class="div-table-cell">Id</div>
                        <div class="div-table-cell"> Consumibles</div>

                        <div class="div-table-cell">
                            <button class="btn btn-danger"><i class="zmdi zmdi-delete"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="container-flat-form">
                    <div class="title-flat-form" style="background-color:#009574;">Agregar una nueva categoría</div>
                    <form action="save-device" method="post" class="form-padding">
                        <div class="row">
                            <div class="col-xs-12">
                                <legend><i class="zmdi zmdi-bookmark-outline"></i> Datos de la categoría</legend><br>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="group-material">
                                    <input type="text" class="material-control tooltips-general" placeholder="Escribe aquí el id de la categoría"  required="" pattern="[0-9]{1,20}" maxlength="20" data-toggle="tooltip" data-placement="top" title="Solo números">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label style="padding-top: 10px;">Id de la categoría</label>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <div class="group-material">
                                    <input type="text" class="material-control tooltips-general" placeholder="Escribe aquí el nombre de la categoría" required="" pattern="[a-zA-z0-9áéíóúÁÉÍÓÚñÑ ]{1,50}" maxlength="50" data-toggle="tooltip" data-placement="top" title="Escribe el nombre de la categoría">
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label style="padding-top: 10px;">Nombre</label>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <p class="text-center">
                                    <button type="reset" class="btn btn-danger" style="margin-right: 20px;"><i class="zmdi zmdi-roller"></i> &nbsp;&nbsp; Borrar</button>
                                    <button type="submit" class="btn btn-primary"><i class="zmdi zmdi-floppy"></i> &nbsp;&nbsp; Guardar</button>
                                </p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="resources/js/carousel.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>
