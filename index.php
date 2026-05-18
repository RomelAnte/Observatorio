<?php include "header.php"; ?>
<!-- ======= Hero Section ======= -->
<style>
  .embed-container {
    position: relative;
    padding-bottom: 37.25%;
    height: 0;
    overflow: hidden;
    margin: auto; 
    display:flex;!important
    justify-content: center;!important
    align-items:center;!important
  }
  .embed-container iframe {
      position: absolute;    
      top:0;
      left: 0;
      width: 100%;
      height: 100%;
  }
  .embed-container div {
      position: absolute;    
      top:0;
      left: 0;
      width: 100%;
      height: 100%;
      
  }
</style>
<div class="embed-container">
    <iframe src="banner.php" allowtransparency="true" class="no-ad"></iframe>    
</div>  
<!-- End Hero -->
<meta charset="utf-8">
<main id="main" style="" >

<!-- ======= Featured Section ======= -->
<section id="featured" class="featured">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="icon-box">
          <a href="proyectos.php"><i class="bi bi-motherboard"></i></a>
          <h3><a href="proyectos.php">Proyectos</a></h3>          
        </div>
      </div>
      <div class="col-lg-4 mt-4 mt-lg-0">
        <div class="icon-box">
          <a href="publicacion.php"><i class="bi bi-book"></i></a>
          <h3><a href="publicacion.php">Publicaciones</a></h3>  
        </div>
      </div>
      <div class="col-lg-4 mt-4 mt-lg-0">
        <div class="icon-box">
          <a href="eventos.php"><i class="bi bi-calendar4-week"></i></a>
          <h3><a href="eventos.php">Eventos</a></h3>
        </div>
      </div>
    </div>
  </div>
</section><!-- End Featured Section -->
  
<!-- ======= About Section ======= -->
<footer id="footer" style="background-color: #305395;">
  <div class="footer-newsletter">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h4>Bienvenidos al Observatorio de Buenas Prácticas</h4>
          <p style="font-size: 16px; text-align: justify;">El Observatorio de Buenas Prácticas para el Aseguramiento de la Calidad en la Educación Superior se crea por iniciativa de docentes de la Universidad Técnica de Cotopaxi con el objetivo de establecer un espacio de encuentro y discusión que facilite la colaboración e intercambio de experiencias en materia de mejora continua, innovación educativa y aseguramiento de la calidad entre universidades y escuelas politécnicas nacionales e internacionales.</p>
        </div>
      </div>
    </div>
  </div>
</footer>
<!-- End About Section -->
<br>
<!-- ======= inicio de las noticias ======= -->
<section id="services" class="services">
  <div class="container">
    <div class="section-title">
      <h2>Noticias</h2>
    </div>
    <div class="news">
        <?php                
          $result = $db->prepare("SELECT * FROM banner where estado=1 ORDER BY id DESC Limit 3");
          $result->execute();
          for($i=0; $row = $result->fetch(); $i++){  
        ?>
        <style type="text/css">
          @media (min-width: 992px){
            *{
              margin: 0; 
              padding: 0;
            }
            .news{
              display: flex;
              justify-content: center;
              width: 100%;
            }
            .news__{
              flex: 1;
              border: 1px solid #DEDEDE;
              padding: 15px;
              margin:0 7px;            
              color:#545454;
            }
            .news__:hover{
              background-color: pink;
              color:pink;
            }
            
            .news__ img{
              width: 100%;
              height: auto;
            }
            .news__img{
              height:230px;
            }
            .news__ h4{
              font-weight: 700;
              text-align:justify;
            }
            .news__img img{
              height: 100%;
              object-fit: cover;
              object-position: center center;
            }
          }
          @media (min-width: 768px) and (max-width: 991px){
            .services .news{
              height: 100%;
              width: 100%;
              display: flex;
              flex-wrap: wrap;
            }
            .news__{
              flex-basis: 47.9%;
              margin:0 7px 14px 7px;  
            }
            .news__:nth-child(3) {
              order: 1;
            }
            .news__img{
              height: 270px;
              background-color: #545454;

            }
            .news__ img{
              height: 100%;
              width: 100%;
              object-fit: cover;
              object-position: center center;
            }
          }
          @media (max-width: 767px){
            .services .news{
              width: 100%;
            }
            .news__{
              margin:0 7px 14px 7px;  
              
            }
            .news__img{
              height: 400px;
              background-color: #545454;

            }
            .news__ img{
              height: 100%;
              width: 100%;
              object-fit: cover;
              object-position: center center;
            }
          }
        </style>
        <div class="news__">
          <!-- inicio estilos auxiliares para el tamaño de la imagen -->
          <!-- fin estilos auxiliares para el tamaño de la imagen -->
          <!-- inicio Caja para la imagen -->
          <div class="news__img">
            <img src="sis_inventario/vistas/modulos/noticia/img/banner/<?php echo $row['url_image'];?>" alt="Image did not load..." class="img">
          </div>
          <!--fin de la Caja para la imagen -->
          <div class="news__titulo">
            <h4 style="text-align: center; margin: 0 auto;"><a href="news_post.php?id=<?php echo $row['id'];?>" style="font-size: 14px;" class="titulo"><?php echo strip_tags(substr($row['titulo'],0,35)) ;?>...</a></h4>
          </div>
          <h4 style="text-align: justify;"><a href="news_post.php?id=<?php echo $row['id'];?>" style="font-size: 12px;"><?php echo strip_tags(substr($row['descripcion'],0,200)) ;?>...</a></h4>
        </div>  
        <?php } ?>          
    </div>    
  </div>
  <hr>
  <center> -- <a href="noticias.php">Todas las Noticias</a> --</center>
  <hr>
</section>
<!-- fin de las noticias -->
<div style="background-color:#ffffff; height: 175px;">
  <br>
  <br>
  <!-- ======= inicio Galeria ======= -->
  <section id="portfolio" class="portfolio"  >
    <div class="container" >
      <!--<div class="row portfolio-container" >
          <*/?php
            $result = $db->prepare("SELECT * FROM gallery ORDER BY id DESC Limit 4");
            $result->execute();
            for($i=0; $row = $result->fetch(); $i++){   
          ?*/> 
        <div class="col-lg-3 col-md-6 portfolio-item filter-app">
          <div class="portfolio-wrap">
            <style type="text/css">
            .fit-image{
              width: 100%;
              object-fit: cover;
              height: 200px; /* only if you want fixed height */
            }
          </style>
            <img src="sis_inventario/vistas/modulos/galeria/uploads/<php echo $row['images'];?>" class="img-fluid fit-image" alt="">
            <div class="portfolio-info">
              
              <div class="portfolio-links">
                <a href="sis_inventario/vistas/modulos/galeria/uploads/<*?php echo $row['images'];?>" data-gallery="portfolioGallery" class="portfolio-lightbox" title=""><i class="bx bx-search-alt"></i></a>
              </div>
            </div>
          </div>
        </div>
          <*?php } ?>
      </div>-->
      <div class="container__">
        <img src="assets/img/logo.png" style="float: left;">
        <img src="assets/img/prueba.png" style="float: right; margin: auto;">
      </div>
    </div>
  </section>
  <!-- fin galeria-->
</div>

<?php include "footer.php"; ?>

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