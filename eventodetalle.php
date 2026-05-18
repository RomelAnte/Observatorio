<?php include "header.php"; ?>

<main id="main" style="margin:0 0 50px 0;">
  <?php
    $id=$_GET['id'];
    $result = $db->prepare("SELECT * FROM events where id= :post_id and estado= 1");
    $result->bindParam(':post_id', $id);
    $result->execute();
    for($i=0; $row = $result->fetch(); $i++){                        
  ?>
  <!-- ======= Breadcrumbs ======= -->
  <section id="breadcrumbs" class="breadcrumbs">
    <div class="container">
      <ol>
        <li><a href="index.php">Inicio</a></li>
        <li><a href="eventos.php">Eventos</a></li>
      </ol>
      <h2><?php echo $row['titulo'];?></h2>
    </div>
  </section><!-- End Breadcrumbs -->
  <!-- ======= Portfolio Details Section ======= -->
  <section id="portfolio-details" class="portfolio-details">
    <div class="container">        
      <div class="row gy-4">
        <div class="col-lg-8">
          <div class="portfolio-details-slider swiper">
            <div class=" align-items-center">
              <div class="swiper-slide">
                <img src="sis_inventario/vistas/modulos/eventofinal/img/banner/<?php echo $row['url_image'];?>" alt="">
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">          
          <!--div class="portfolio-info">
            <h3>Información del Evento</h3>
            <ul>
              <li><strong>Hora</strong>: </*?php echo $row['hora'];?></li>
              <li><strong>Fecha</strong>: </*?php echo $row['fecha'];?></li>
              <li><strong>Teléfono</strong>: </*?php echo $row['phone'];?></li>
              <li><strong>Dirección </strong>: </*?php echo $row['venue'];?></li>              
            </ul>
          </div>
          <br-->
          <?php
            if ($row['url_video'] != '' || $row['url_web'] != '') {
                echo '<div class="portfolio-info">';
                echo '<h3>Links</h3>';
                echo '<center>';
                if ($row['url_video'] != '') {
                  echo '<div class="read-more">';
                  echo '<a href="' . $row['url_video'] . '" style="display: inline-block; background: #e96b56; color: #fff; padding: 6px 20px; transition: 0.3s; font-size: 14px; border-radius: 4px; width:150px;" target="_blank"><i class="bx bx-link"></i> Ver video</a>';
                  echo '</div>';
                }
                echo '<br>';
                if ($row['url_web'] != ''){
                  echo '<div class="read-more">';
                  echo '<a href="' . $row['url_web'] . '" style="display: inline-block; background: #e96b56; color: #fff; padding: 6px 20px; transition: 0.3s; font-size: 14px; border-radius: 4px; width:150px;" target="_blank"><i class="bx bx-link"></i> Ir al Evento</a>';
                  echo '</div>';
                }                
                echo '</center>';
                echo '</div>';
            }
          ?>

        </div>
        <div class="col-lg-8">          
          <div class="portfolio-info">
            <h3>Descripción</h3>
            <p style="text-align: justify;">
              <?php echo $row['descripcion'];?>
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