<?php include "header.php"; ?>

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php">Inicio</a></li>
          <li>Noticias</li>
        </ol>
        <h2>Últimas Noticias</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-8 entries">
            <!-- inicio contenido de las noticias -->
            <?php  
            include('connect2.php'); 
            $query = "select * from banner where estado=1 "; 
            $resultado = mysqli_query($conn,$query);
          ?>

            <?php foreach($resultado as $row){ ?> 
            <article class="entry">
              <style type="text/css">
                .blog .entry .entry-img {
                  max-height: 440px;
                  margin: -30px -30px 20px -30px;
                  overflow: hidden;
                }
              </style>
              <div class="entry-img">
                <img src="sis_inventario/vistas/modulos/noticia/img/banner/<?php echo $row['url_image'];?>" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title" style="text-align: justify;">
                <a href="news_post.php?id=<?php echo $row['id'];?>"><?php echo $row['titulo']; ?></a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <!-- <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">John Doe</a></li> -->
                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01"><?php echo $row['publicado']; ?></time></a></li>
                  <!-- <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li> -->
                </ul>
              </div>

              <div class="entry-content">
                <p style="text-align: justify;"><?php echo strip_tags(substr($row['descripcion'],0,300)) ;?>...</p>
                <div class="read-more">
                  <a href="news_post.php?id=<?php echo $row['id'];?>">Leer Más</a>
                </div>
              </div>
            </article>
            <?php } ?>
            
            <!-- fin contenido de las noticias -->

          </div><!-- End blog entries list -->

          <div class="col-lg-4">

            <div class="sidebar">


              <h3 class="sidebar-title">Noticias Recientes</h3>
              <div class="sidebar-item recent-posts">
                <?php
                  $result = $db->prepare("SELECT * FROM banner where estado=1 ORDER BY id DESC Limit 5");
                  $result->execute();
                  for($i=0; $row = $result->fetch(); $i++){   
                ?>
                <div class="post-item clearfix">
                  <img src="sis_inventario/vistas/modulos/noticia/img/banner/<?php echo $row['url_image'];?>" alt="">
                  <h4 style="text-align: justify; font-size: 14px;"><a href="news_post.php?id=<?php echo $row['id'];?>"><?php echo strip_tags(substr($row['titulo'],0,45)) ;?>...</a></h4>
                  <time datetime="2020-01-01"><?php echo $row['publicado']; ?></time>
                </div>
                <?php } ?>

              </div><!-- End sidebar recent posts-->



            </div><!-- End sidebar -->

          </div><!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Section -->

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