 
<!--....................................................................................................-->
<?php

if($_SESSION["perfil"] == "Estudiante" || $_SESSION["perfil"] == "Docente"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}

?>


<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Eventos
    
    </h1>
    <br>
    <span style="text-align: justify;" >
      
    </span>

    <ol class="breadcrumb">
      
      <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Gestión Eventos</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="row">

      <!--=====================================
      EL FORMULARIO
      ======================================-->
      <div class="col-lg-12 col-xs-12">

        <div class="box box-success">
        

<!--...................................INICIO DEL CONTENIDO.......................................-->
<iframe src="vistas/modulos/eventofinal/colaborador/index.php" style="width: 100%; height: 650px" name="formularios"></iframe>
<!--.....................................FIN DEL CONTENIDO........................................-->
        </div>
      </div>

    </div>
   
  </section>


</div>

