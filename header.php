<?php 

include "connect.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Observatorio | Red de Buenas Practicas</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  

  <!-- inicio del bloqueo del clic derecho -->
  <script type="text/javascript" language="Javascript">
  document.oncontextmenu = function(){return false}
  </script>
  <!-- fin del bloqueo del clic derecho -->

</head>


<body oncopy="return false" onpaste="return false"><!-- evita copiar el contenido  -->

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <img src="assets/img/logo.png">
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        <img src="assets/img/prueba.png">
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        
        <nav id="navbar" class="navbar">
        <ul>
          <li><h2><a href="index.php">Inicio</a></h2></li>
          <!--<li><h2><a href="evaluadores.php">Banco de Evaluadores</a></h2></li>-->
          <li><h2><a href="alianzas.php">Alianzas</a></h2></li>
          <li><h2><a href="eventos.php">Eventos</a></h2></li>
          <li><h2><a href="proyectos.php">Proyectos</a></h2></li>
          <li><h2><a href="publicacion.php">Publicaciones</a></h2></li>
          <li><h2><a href="contacto.php">Contacto</a></h2></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><h1><a class="active" href="sis_inventario/index.php">Login</a></h1></li>
          
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->