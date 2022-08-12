<%--
  Created by IntelliJ IDEA.
  User: elpor
  Date: 05/08/2022
  Time: 04:13 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources2/css/stylecarousel.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="resources2/css/styleslider.css">
    <link rel="stylesheet" href="resources2/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="resources2/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
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
    <div class="tittle">Equipos de computo</div>
    <div>
        <div class="container">
            <div class="swiper-container mySwiper">

                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/91m9sZsP50L._AC_SX450_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="monitor">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Monitor</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" href="request-device" >
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">

                                <div class="card card-body">
                                    <b>Id:</b> 1
                                    <b>Nombre:</b> Monitor Samsung
                                    <b>Id_Categoria:</b>1
                                    <b>Descripcion: </b> Monitor con Panel Curvo 24", Super Delgado y Elegante, Experiencia de Juego Mejorada
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/91m9sZsP50L._AC_SX450_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="monitor">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Monitor</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 1
                                    <b>Nombre:</b> Monitor Samsung
                                    <b>Id_Categoria:</b>1
                                    <b>Descripcion: </b> Monitor con Panel Curvo 24", Super Delgado y Elegante, Experiencia de Juego Mejorada
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/91m9sZsP50L._AC_SX450_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="monitor">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Monitor</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 1
                                    <b>Nombre:</b> Monitor Samsung
                                    <b>Id_Categoria:</b>1
                                    <b>Descripcion: </b> Monitor con Panel Curvo 24", Super Delgado y Elegante, Experiencia de Juego Mejorada
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/91m9sZsP50L._AC_SX450_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="monitor">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Monitor</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 1
                                    <b>Nombre:</b> Monitor Samsung
                                    <b>Id_Categoria:</b>1
                                    <b>Descripcion: </b> Monitor con Panel Curvo 24", Super Delgado y Elegante, Experiencia de Juego Mejorada
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/91m9sZsP50L._AC_SX450_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="monitor">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Monitor</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 1
                                    <b>Nombre:</b> Monitor Samsung
                                    <b>Id_Categoria:</b>1
                                    <b>Descripcion: </b> Monitor con Panel Curvo 24", Super Delgado y Elegante, Experiencia de Juego Mejorada
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/91m9sZsP50L._AC_SX450_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="monitor">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Monitor</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 1
                                    <b>Nombre:</b> Monitor Samsung
                                    <b>Id_Categoria:</b>1
                                    <b>Descripcion: </b> Monitor con Panel Curvo 24", Super Delgado y Elegante, Experiencia de Juego Mejorada
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="tittle">Telefonia</div>
    <div>
        <div class="container">

            <div class="swiper-container mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/71tnYb1mZAL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="telefono">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Telefono</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 7
                                    <b>Nombre:</b> Xiaomi Shark
                                    <b>Id_Categoria:</b>2
                                    <b>Descripcion: </b>Black Shark 5 Pro Teléfono para Juegos 5G Versión,
                                    teléfono Inteligente Snapdragon 8 Gen 1, batería de 4650 mAh, gatillos emergentes magnéticos, 6.67" AMOLED 144 Hz, Dual Sim, 8 + 128 GB, Negro
                                    <b>Unidades disponibles</b> 17
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/71tnYb1mZAL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="telefono">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Telefono</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 7
                                    <b>Nombre:</b> Xiaomi Shark
                                    <b>Id_Categoria:</b>2
                                    <b>Descripcion: </b>Black Shark 5 Pro Teléfono para Juegos 5G Versión,
                                    teléfono Inteligente Snapdragon 8 Gen 1, batería de 4650 mAh, gatillos emergentes magnéticos, 6.67" AMOLED 144 Hz, Dual Sim, 8 + 128 GB, Negro
                                    <b>Unidades disponibles</b> 17
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/71tnYb1mZAL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="telefono">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Telefono</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 7
                                    <b>Nombre:</b> Xiaomi Shark
                                    <b>Id_Categoria:</b>2
                                    <b>Descripcion: </b>Black Shark 5 Pro Teléfono para Juegos 5G Versión,
                                    teléfono Inteligente Snapdragon 8 Gen 1, batería de 4650 mAh, gatillos emergentes magnéticos, 6.67" AMOLED 144 Hz, Dual Sim, 8 + 128 GB, Negro
                                    <b>Unidades disponibles</b> 17
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/71tnYb1mZAL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="telefono">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Telefono</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 7
                                    <b>Nombre:</b> Xiaomi Shark
                                    <b>Id_Categoria:</b>2
                                    <b>Descripcion: </b>Black Shark 5 Pro Teléfono para Juegos 5G Versión,
                                    teléfono Inteligente Snapdragon 8 Gen 1, batería de 4650 mAh, gatillos emergentes magnéticos, 6.67" AMOLED 144 Hz, Dual Sim, 8 + 128 GB, Negro
                                    <b>Unidades disponibles</b> 17
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/71tnYb1mZAL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="telefono">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Telefono</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 7
                                    <b>Nombre:</b> Xiaomi Shark
                                    <b>Id_Categoria:</b>2
                                    <b>Descripcion: </b>Black Shark 5 Pro Teléfono para Juegos 5G Versión,
                                    teléfono Inteligente Snapdragon 8 Gen 1, batería de 4650 mAh, gatillos emergentes magnéticos, 6.67" AMOLED 144 Hz, Dual Sim, 8 + 128 GB, Negro
                                    <b>Unidades disponibles</b> 17
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-slide">
                        <img src="https://m.media-amazon.com/images/I/71tnYb1mZAL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                             alt="telefono">
                        <div class="card-body">

                            <h6 style="padding: 15px; text-align: left;">Telefono</h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    Detalles
                                </a>

                            </div>
                            <div class="collapse" id="collapseExample">
                                <div class="card card-body">
                                    <b>Id:</b> 7
                                    <b>Nombre:</b> Xiaomi Shark
                                    <b>Id_Categoria:</b>2
                                    <b>Descripcion: </b>Black Shark 5 Pro Teléfono para Juegos 5G Versión,
                                    teléfono Inteligente Snapdragon 8 Gen 1, batería de 4650 mAh, gatillos emergentes magnéticos, 6.67" AMOLED 144 Hz, Dual Sim, 8 + 128 GB, Negro
                                    <b>Unidades disponibles</b> 17
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tittle">Equipos de red</div>
                <div>
                    <div class="container">

                        <div class="swiper-container mySwiper">

                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/51ax8peHlPL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="router">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Router</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 13
                                                <b>Nombre:</b> Router 3000
                                                <b>Id_Categoria:</b>3
                                                <b>Descripcion: </b>TP-Link Router Inalámbrico Doble banda Gigabit AC1900,3 × 3 MIMO,IPTV, Archer C80
                                                <b>Unidades disponibles</b> 23
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/51ax8peHlPL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="router">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Router</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>
                                            >
                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 13
                                                <b>Nombre:</b> Router 3000
                                                <b>Id_Categoria:</b>3
                                                <b>Descripcion: </b>TP-Link Router Inalámbrico Doble banda Gigabit AC1900,3 × 3 MIMO,IPTV, Archer C80
                                                <b>Unidades disponibles</b> 23
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/51ax8peHlPL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="router">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Router</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 13
                                                <b>Nombre:</b> Router 3000
                                                <b>Id_Categoria:</b>3
                                                <b>Descripcion: </b>TP-Link Router Inalámbrico Doble banda Gigabit AC1900,3 × 3 MIMO,IPTV, Archer C80
                                                <b>Unidades disponibles</b> 23
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/51ax8peHlPL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="router">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Router</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 13
                                                <b>Nombre:</b> Router 3000
                                                <b>Id_Categoria:</b>3
                                                <b>Descripcion: </b>TP-Link Router Inalámbrico Doble banda Gigabit AC1900,3 × 3 MIMO,IPTV, Archer C80
                                                <b>Unidades disponibles</b> 23
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/51ax8peHlPL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="router">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Router</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 13
                                                <b>Nombre:</b> Router 3000
                                                <b>Id_Categoria:</b>3
                                                <b>Descripcion: </b>TP-Link Router Inalámbrico Doble banda Gigabit AC1900,3 × 3 MIMO,IPTV, Archer C80
                                                <b>Unidades disponibles</b> 23
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/51ax8peHlPL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="router">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Router</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 13
                                                <b>Nombre:</b> Router 3000
                                                <b>Id_Categoria:</b>3
                                                <b>Descripcion: </b>TP-Link Router Inalámbrico Doble banda Gigabit AC1900,3 × 3 MIMO,IPTV, Archer C80
                                                <b>Unidades disponibles</b> 23
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tittle">Equipos de audio</div>
                <div>
                    <div class="container">

                        <div class="swiper-container mySwiper">

                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61efl-Ry3rL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="bocinas">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Bocinas</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 18
                                                <b>Nombre:</b>Bocinas
                                                <b>Id_Categoria:</b>4
                                                <b>Descripcion: </b>Requiere amplificador o receptor: debe emparejarse con
                                                un amplificador capaz de suministrar 100 W por canal en 6 ohmios, YU Passive 5.25 pulgada
                                                <b>Unidades disponibles</b> 7
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61efl-Ry3rL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="bocinas">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Bocinas</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 18
                                                <b>Nombre:</b>Bocinas
                                                <b>Id_Categoria:</b>4
                                                <b>Descripcion: </b>Requiere amplificador o receptor: debe emparejarse con
                                                un amplificador capaz de suministrar 100 W por canal en 6 ohmios, YU Passive 5.25 pulgada
                                                <b>Unidades disponibles</b> 7
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61efl-Ry3rL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="bocinas">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Bocinas</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 18
                                                <b>Nombre:</b>Bocinas
                                                <b>Id_Categoria:</b>4
                                                <b>Descripcion: </b>Requiere amplificador o receptor: debe emparejarse con
                                                un amplificador capaz de suministrar 100 W por canal en 6 ohmios, YU Passive 5.25 pulgada
                                                <b>Unidades disponibles</b> 7
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61efl-Ry3rL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="bocinas">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Bocinas</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 18
                                                <b>Nombre:</b>Bocinas
                                                <b>Id_Categoria:</b>4
                                                <b>Descripcion: </b>Requiere amplificador o receptor: debe emparejarse con
                                                un amplificador capaz de suministrar 100 W por canal en 6 ohmios, YU Passive 5.25 pulgada
                                                <b>Unidades disponibles</b> 7
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61efl-Ry3rL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="bocinas">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Bocinas</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 18
                                                <b>Nombre:</b>Bocinas
                                                <b>Id_Categoria:</b>4
                                                <b>Descripcion: </b>Requiere amplificador o receptor: debe emparejarse con
                                                un amplificador capaz de suministrar 100 W por canal en 6 ohmios, YU Passive 5.25 pulgada
                                                <b>Unidades disponibles</b> 7
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61efl-Ry3rL._AC_SX466_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="bocinas">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Bocinas</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 18
                                                <b>Nombre:</b>Bocinas
                                                <b>Id_Categoria:</b>4
                                                <b>Descripcion: </b>Requiere amplificador o receptor: debe emparejarse con
                                                un amplificador capaz de suministrar 100 W por canal en 6 ohmios, YU Passive 5.25 pulgada
                                                <b>Unidades disponibles</b> 7
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tittle">Equipos de video</div>
                <div>
                    <div class="container">

                        <div class="swiper-container mySwiper">

                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61yJsZTL8jL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Proyector</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 23
                                                <b>Nombre:</b>Proyector
                                                <b>Id_Categoria:</b>5
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 9
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61yJsZTL8jL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Proyector</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                    Detalles
                                                </a>

                                            </div>
                                            <div class="collapse" id="collapseExample">
                                                <div class="card card-body">
                                                    <b>Id:</b> 23
                                                    <b>Nombre:</b>Proyector
                                                    <b>Id_Categoria:</b>5
                                                    <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                    Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                    <b>Unidades disponibles</b> 9
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61yJsZTL8jL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Proyector</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 23
                                                <b>Nombre:</b>Proyector
                                                <b>Id_Categoria:</b>5
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 9
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61yJsZTL8jL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Proyector</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 23
                                                <b>Nombre:</b>Proyector
                                                <b>Id_Categoria:</b>5
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 9
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61yJsZTL8jL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Proyector</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 23
                                                <b>Nombre:</b>Proyector
                                                <b>Id_Categoria:</b>5
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 9
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/61yJsZTL8jL._AC_SY450_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Proyector</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 23
                                                <b>Nombre:</b>Proyector
                                                <b>Id_Categoria:</b>5
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 9
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tittle">Consumibles</div>
                <div>
                    <div class="container">

                        <div class="swiper-container mySwiper">

                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/510q1AR96tL._AC_SX679_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Cable datos</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 26
                                                <b>Nombre:</b>Cable de datos tipo C
                                                <b>Id_Categoria:</b>6
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 12
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/510q1AR96tL._AC_SX679_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Cable datos</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 26
                                                <b>Nombre:</b>Cable de datos tipo C
                                                <b>Id_Categoria:</b>6
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 12
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/510q1AR96tL._AC_SX679_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Cable datos</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 26
                                                <b>Nombre:</b>Cable de datos tipo C
                                                <b>Id_Categoria:</b>6
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 12
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/510q1AR96tL._AC_SX679_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Cable datos</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 26
                                                <b>Nombre:</b>Cable de datos tipo C
                                                <b>Id_Categoria:</b>6
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 12
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/510q1AR96tL._AC_SX679_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Cable datos</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 26
                                                <b>Nombre:</b>Cable de datos tipo C
                                                <b>Id_Categoria:</b>6
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 12
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <img src="https://m.media-amazon.com/images/I/510q1AR96tL._AC_SX679_.jpg" class="rounded mx-auto d-block img-fluid"
                                         alt="Proyector">
                                    <div class="card-body">

                                        <h6 style="padding: 15px; text-align: left;">Cable datos</h6>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                Detalles
                                            </a>

                                        </div>
                                        <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                                                <b>Id:</b> 26
                                                <b>Nombre:</b>Cable de datos tipo C
                                                <b>Id_Categoria:</b>6
                                                <b>Descripcion: </b>Proyector de Películas Multimedia de Cine en Casa
                                                Proyector Compatible con HDMI, VGA, USB, AV, Mini Proyector Ideal para TV Box PS4 Home Cinema Laptop Teléfono Inteligente Game
                                                <b>Unidades disponibles</b> 12
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
            <script src="resources2/js/carousel.js"></script>
            <script src="resources2/js/sidebar.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>


</body>
</html>
