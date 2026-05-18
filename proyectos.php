<?php include "header.php"; ?>

  <main id="main" style="margin:0 0 50px 0;">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php">Inicio</a></li>
          <li>Proyectos</li>
        </ol>
        <h2>Proyectos</h2>

      </div>
    </section><!-- End Breadcrumbs -->


    <!-- ======= inicio de los eventos ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="row">

          <?php  
            include('connect2.php'); 
            $query = "select * from proyecto where estado=1"; 
            $resultado = mysqli_query($conn,$query);
          ?>

            <?php foreach($resultado as $row){ ?>
          <div class="col-lg-4" style="text-align: justify;">
            <div class="testimonial-item">
               <style type="text/css">
              .fit-image{
                width: 100%;
                object-fit: cover;
                height: 300px; /* only if you want fixed height */
                border: 1px solid #c7c6c6;
              }
            </style>
              
              <embed src="sis_inventario/vistas/modulos/proyecto/img/banner/<?php echo $row['url_image']; ?>" type="application/pdf" style="width:100%; height:200px;" />

              <div style="height:50px;"><h3><?php echo strip_tags(substr($row['titulo'],0,50)) ;?>...</h3></div>
              <h4>Publicado: 
                <?php
                  $fecha = $row['publicado'];
                  $fechaEntera = strtotime($fecha);
                  $anio = date("Y", $fechaEntera);
                  $mes = date("m", $fechaEntera);
                  $dia = date("d", $fechaEntera);
                   
                  echo "$anio-$mes-$dia";
                  ?>
              </h4>
              <div style="height:100px;"><p>
                <?php echo strip_tags(substr($row['descripcion'],0,150)) ;?>...
              </p></div>
              
              <br>
              <center>
                <div class="read-more">
                    <a href="proyectodetalle.php?id=<?php echo $row['id'];?>" style="display: inline-block; background: #e96b56; color: #fff; padding: 6px 20px; transition: 0.3s; font-size: 14px; border-radius: 4px;">Leer Más</a>
                </div>
              </center>
            </div>
          </div>
            <?php } ?>

  <!-- ======= eventos recientes ======= -->

  <!-- fin de los eventos recientes -->
          

        </div>

      </div>
    </section>
    <!-- fin de los eventos -->

  


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