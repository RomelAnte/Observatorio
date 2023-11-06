<?php 
include("conexion.php");
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto + Roboto Slab-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700%7CRoboto:400,700,300">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- animate.css-->
    <link rel="stylesheet" href="vendor/animate.css/animate.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.violet.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- Reference item-->
    <!-- navbar-->
    <!--
    *** REFERENCES IMAGE ***
    _________________________________________________________
    -->
    <section id="references">
      <div class="container">
        <div class="col-sm-12">
          <div id="detail">
            <div class="row">
              <div class="col-lg-12 mx-auto"><span style="font-size:25px; background: #fff;" class="close">×</span>
                <div id="detail-slider" class="owl-carousel owl-theme"></div>
                <div class="text-center">
                  <h1 style="font-size:25px; font-family: arial;" id="detail-title" ></h1>
                </div>
                <div id="detail-content"></div>
              </div>
            </div>
          </div>
          <!-- Reference detail-->
          <div id="references-masonry" data-animate="fadeInUp">
            <div class="row">
			<?php 
				$sql_banner_top=mysqli_query($con,"select * from events where estado=1 order by orden ");
				while($row=mysqli_fetch_object($sql_banner_top)){
					?>
				 <div data-category="webdesign" class="reference-item col-lg-4 col-md-6">
                    <div class="reference"><a href="#"><img src="img/banner/<?php echo $row->url_image;?>" alt="" class="img-fluid">
                        <div class="overlay">
                          <div class="inner">
                            <h3 style="font-size: 16px;" class="h4 reference-title"><?php echo $row->titulo;?></h3>
                            <p><?php echo $row->fecha;?></p>
                          </div>
                        </div></a>

                      <div data-images="img/banner/<?php echo $row->url_image;?>" class="sr-only reference-description">
                        <style type="text/css">
                          .fit-image{
                           width: 75%; 
                           height: 700px;
                          }
                        </style>
                        <center><img src="img/banner/<?php echo $row->url_image;?>" alt="" class="img-responsive fit-image"></center>

                        <p><?php echo $row->descripcion;?></p>
                        <div>
                          <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                          <div class="w3-container">
  <h3>Detalle</h3>
  <ul class="w3-ul w3-card-4">
    <ul class="w3-ul">
   
    <li class="w3-large"><i class="fa fa-calendar"></i> Fecha: <?php echo $row->fecha;?></li>
    <li class="w3-large"><i class="fa fa-clock-o"></i> Hora:  <?php echo $row->hora;?></li>
  </ul>


  </ul>
</div>
                        </div>
                       
                        <p class="buttons text-center"><a href="<?php echo $row->url_web;?>" class="btn btn-outline-primary"><i class="fa fa-globe"></i> Sitio Web</a></p>
                      </div>

                    </div>
                  </div>	
					<?php
				}
			?>
                 
               
                  
                  
                
                 
                 
            </div>
          </div>
        </div>
      </div>
    </section>


    
  
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/waypoints/lib/jquery.waypoints.min.js"></script>
    <script src="vendor/jquery.counterup/jquery.counterup.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
    <script src="js/front.js"></script>
  </body>
</html>