<?php include "header.php"; ?>

  <main id="main" style="margin:0 0 50px 0;">
    <?php
          $id=$_GET['id'];
          $result = $db->prepare("SELECT * FROM clientes where id= :post_id and estado=1");
          $result->bindParam(':post_id', $id);
          $result->execute();
          for($i=0; $row = $result->fetch(); $i++){                        
        ?>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php">Inicio</a></li>
          <li><a href="alianzas.php">Alianzas</a></li>
        </ol>
        <h2><?php echo $row['nombre'];?></h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">
        
        <div class="row gy-4">

          <div class="col-lg-7">
            <div class="portfolio-details-slider swiper">
              <div class=" align-items-center">

                <div class="swiper-slide">
                  <img src="sis_inventario/vistas/modulos/alianzas/img/banner/<?php echo $row['url_image'];?>" alt="">
                </div>


              </div>
              <br>
              <center>
                <div class="col-lg-7">
                  <div class="portfolio-details-slider swiper">
                    <div class=" align-items-center">
                      <div class="section-title">
                        <h2>Hoja de Vida</h2>
                      </div>
                      
                    </div>
                    
                  </div>
                </div>
              </center>
              <div class=" align-items-center">

                <div class="swiper-slide">
                  <embed src="sis_inventario/vistas/modulos/evaluadores/img/banner/<?php echo $row['url_pdf']; ?>" type="application/pdf" style="width:100%; height:700px;" />
                </div>
                
              </div>
            </div>
          </div>

          <div class="col-lg-5" style="text-align: justify;">
            
            <div class="portfolio-info">
              <h3>Información de Contacto</h3>
              <ul>
                <li><strong>Email</strong>: <?php echo $row['email'];?></li>
                <li><strong>Teléfono</strong>: <?php echo $row['telefono'];?></li>
              </ul>
            </div>
              <br>
            <div class="portfolio-info">
              <h3>Sobre Mí</h3>
              <ul>
                <li><?php echo strip_tags(substr($row['sobremi_eva'],0,700)) ;?></li>
              </ul>
              <p style="text-align: justify; ">
                
              </p>
            </div>
          </div>


        </div>
        <?php } ?>
      </div>
    </section><!-- End Portfolio Details Section -->

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