<?php
include ("vistas/modulos/conn.php");
//----------------Inicio usuario;
$sqluser = "SELECT * FROM usuarios";
if ($re1=mysqli_query($conn,$sqluser)) {
    $usuarios=mysqli_num_rows($re1);
}
//-- -------------fin usuario;

//----------------Inicio publicacion;
$sqlpubl = "SELECT * FROM publicacion";
if ($re2=mysqli_query($conn,$sqlpubl)) {
    $publicaciones=mysqli_num_rows($re2);
}
//-- -------------fin publicacion;

//----------------Inicio proyectos;
$sqlproy = "SELECT * FROM proyecto";
if ($re3=mysqli_query($conn,$sqlproy)) {
    $proyectos=mysqli_num_rows($re3);
}
//-- -------------fin proyectos;

//----------------Inicio evaluador;
$sqleval = "SELECT * FROM evaluador";
if ($re4=mysqli_query($conn,$sqleval)) {
    $evaluadores=mysqli_num_rows($re4);
}
//-- -------------fin evaluador;

//----------------Inicio alianzas;
$sqlalia = "SELECT * FROM clientes";
if ($re5=mysqli_query($conn,$sqlalia)) {
    $alianzas=mysqli_num_rows($re5);
}
//-- -------------fin alianzas;

//----------------Inicio eventos;
$sqleven = "SELECT * FROM events";
if ($re6=mysqli_query($conn,$sqleven)) {
    $eventos=mysqli_num_rows($re6);
}
//-- -------------fin eventos;

//----------------Inicio noticias;
$sqlnoti = "SELECT * FROM news";
if ($re7=mysqli_query($conn,$sqlnoti)) {
    $noticias=mysqli_num_rows($re7);
}
//----------------fin noticias;

//----------------Inicio contacto;
$sqlcont = "SELECT * FROM contacto";
if ($re8=mysqli_query($conn,$sqlcont)) {
    $contactos=mysqli_num_rows($re8);
}
//----------------fin contacto;

?>
<!--/////// caja usuarios-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-blue">
    <div class="inner">
      <h3><?php echo ($usuarios); ?></h3>
      <p>Usuarios</p>
    </div>
    <div class="icon">
      <i class="fa fa-user"></i>
    </div>
    <a href="usuarios" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja usuarios-->

<!--/////// caja publicacion-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-teal">  
    <div class="inner">
      <h3><?php echo ($publicaciones); ?></h3>
      <p>Publicaciones</p>
    </div>
    <div class="icon">
      <i class="fa fa-book"></i>
    </div>
    <a href="publicacion" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja publicacion-->

<!--/////// caja proyectos-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-aqua">  
    <div class="inner">
      <h3><?php echo ($proyectos); ?></h3>
      <p>Proyectos</p>
    </div>
    <div class="icon">
      <i class="fa fa-file-text-o"></i>
    </div>
    <a href="proyecto" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja proyectos-->

<!--/////// caja evaluadores-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-yellow">  
    <div class="inner">
      <h3><?php echo ($evaluadores); ?></h3>
      <p>Evaluadores</p>
    </div>
    <div class="icon">
      <i class="fa fa-user-circle-o"></i>
    </div>
    <a href="evaluadores" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja evaluadores-->

<!--/////// caja alianzas-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-purple">  
    <div class="inner">
      <h3><?php echo number_format($alianzas); ?></h3>
      <p>Alianzas</p>
    </div>
    <div class="icon">
      <i class="fa fa-handshake-o"></i>
    </div>
    <a href="alianza" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja alianzas-->

<!--/////// caja eventos-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-maroon">  
    <div class="inner">
      <h3><?php echo ($eventos); ?></h3>
      <p>Eventos</p>
    </div>
    <div class="icon">
      <i class="fa fa-calendar"></i>
    </div>
    <a href="eventos" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja eventos-->

<!--/////// caja noticias-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-red">  
    <div class="inner">
      <h3><?php echo number_format($noticias); ?></h3>
      <p>Noticias</p>
    </div>
    <div class="icon">
      <i class="fa fa-newspaper-o"></i>
    </div>
    <a href="noticia" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja noticias-->

<!--/////// caja contactos-->
<div class="col-lg-3 col-xs-6">
  <div class="small-box bg-green">  
    <div class="inner">
      <h3><?php echo number_format($contactos); ?></h3>
      <p>Contactos</p>
    </div>
    <div class="icon">
      <i class="fa fa-users"></i>
    </div>
    <a href="contactenos" class="small-box-footer">
      Más info <i class="fa fa-arrow-circle-right"></i>
    </a>
  </div>
</div>
<!--/////// fin caja contactos-->


