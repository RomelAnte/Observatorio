<?php include "header.php"; ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php">Inicio</a></li>
          <li>Evaluadores </li>
        </ol>
        <h2>Banco de Evaluadores</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="row">
          
          <?php  
            include('connect2.php'); 
            $query = "select * from evaluador where estado=1 "; 
            $resultado = mysqli_query($conn,$query);
          ?>
          <?php foreach($resultado as $row){ ?> 
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="member">
              <style type="text/css">
                  *{margin: 0; padding: 0;}
                  .doc{
                    display: flex;
                    flex-flow: column wrap;
                    justify-content: center;
                    align-items: center;
                    background: #333944;
                  }
                  .box{
                    width: 316px;
                    height: 280px;
                    background: #CCC;
                    overflow: hidden;
                  }
                  .box img{
                    width: 100%;
                    height: auto;
                  }
                  @supports(object-fit: cover){
                      .box img{
                        height: 100%;
                        object-fit: cover;
                        object-position: center center;
                      }
                  }
                </style>
                <!-- fin estilos auxiliares para el tamaño de la imagen -->

              <!-- inicio Caja para la imagen -->
              <div class="doc">
                <div class="box">
                  <img src="sis_inventario/vistas/modulos/evaluadores/img/banner/<?php echo $row['url_image'];?>" alt="Image did not load...">
                </div>
              </div>
              <!--fin de la Caja para la imagen -->
              
              <div style="height:25px;"><h4><a href="evaluadordetalle.php?id=<?php echo $row['id'];?>"><?php echo $row['nombre']; ?></a></h4></div>

              <!--<span>Chief Executive Officer</span>-->
              <div style="height: 75px;"><p style="text-align: justify;">
                <?php echo strip_tags(substr($row['sobremi_eva'],0,130)) ;?>...
              </p></div>
              <div class="social">
                <!--<a href=""><i class="bi bi-twitter"></i></a>-->
                <a href="<?php echo $row['facebook_eva']; ?>" target="_blank"><i class="bi bi-facebook"></i></a>
                <a href="<?php echo $row['linked_eva']; ?>" target="_blank"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>
          <?php }?>



        </div>

      </div>
    </section>
    <!-- End Team Section -->

    <!-- inicio requisito para formar parte del observatorio -->
    <div class="main" role="main">
      <div id="content" class="content full">
        <div class="container">
          <section class="section" >
            <div style="text-align:justify;" class="listing events-listing">
                <header >
                  <h3 class=" titles">¿Cómo ser parte del Observatorio?</h3>
                </header>
                <!-- ............................................ -->
                <div style=" overflow: auto; border: 0px solid #4CAF50; padding: 5px; background-color:rgba(0, 153, 168, 0.1);  border-radius: 90px;">
                  <img src="assets/img/formulario.png" alt="Pineapple" width="100" height="100">
                  
                  <span style="font-size:18px; text-align: justify;">Llenar el formulario del registro.</span>
                </div>

                <br>

                <div style=" overflow: auto; border: 0px solid #4CAF50; padding: 5px; background-color:rgba(0, 153, 168, 0.2);  border-radius: 90px;">
                  <img src="assets/img/institucion.png" alt="Pineapple" width="100" height="100">
                  
                  <span style="font-size:18px; text-align: justify;">Confirmación de datos.</span>
                </div>

                <br>

                <div style=" overflow: auto; border: 0px solid #4CAF50; padding: 5px; background-color:rgba(0, 153, 168, 0.4);  border-radius: 90px;">
                  <img src="assets/img/aproba.png" alt="Pineapple" width="100" height="100">
                  
                  <span style="font-size:18px; text-align: justify;">Aprobación de la inscripción.</span>
                </div>
                <!-- ................style="float: left;"............................ -->
              </div>
              <br>
              <div style="text-align:right; font-size:25px;">
              
                <a href="evaluadoresagre.php"><img src="assets/img/registro.png" alt="Pineapple" width="25%"></a>
              </div>

          </section>
          <!-- end section -->
          
        </div>
      </div>
    </div>
    <!-- fin requisito para formar parte del observatorio -->


  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php include "footer.php"; ?>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>