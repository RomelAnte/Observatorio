
<?php include "header.php"; ?>
  <main id="main" style="margin:0 0 50px 0;">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php">Inicio</a></li>
          <li>Galería</li>
        </ol>
        <h2>Galería</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">

        

        <div class="row portfolio-container">

          <?php
              $result = $db->prepare("SELECT * FROM gallery ORDER BY id DESC Limit 4");
              $result->execute();
              for($i=0; $row = $result->fetch(); $i++){   
            ?> 
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <style type="text/css">
              .fit-image{
                width: 100%;
                object-fit: cover;
                height: 250px; /* only if you want fixed height */
              }
            </style>
              <img src="sis_inventario/vistas/modulos/galeria/uploads/<?php echo $row['images'];?>" class="img-fluid fit-image" alt="">
              <div class="portfolio-info">
                <div class="portfolio-links">
                  <a href="sis_inventario/vistas/modulos/galeria/uploads/<?php echo $row['images'];?>" data-gallery="portfolioGallery" class="portfolio-lightbox" title=""><i class="bx bx-search-alt"></i></a>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>


        </div>
      </div>
    </section><!-- End Portfolio Section -->



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