 
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
      
      Administrar Alianzas
    
    </h1>
    <br>
    <span style="text-align: justify;" >
      
    </span>

    <ol class="breadcrumb">
      
      <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Gestión Alianzas</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="row">

      <!--=====================================
      EL FORMULARIO
      ======================================-->
      <div class="col-lg-12 col-xs-12">

        <div class="box box-success">
          <!--
          <div class="w3-panel w3-leftbar w3-border-blue w3-pale-blue" style="width: 100%;">
            <p style="display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px;"> Se recomienda que la imagen tenga una dimensión de 1949 x 755 pixeles. 
            </p>
          </div>
          -->

        

<!--...................................INICIO DEL CONTENIDO.......................................-->
<iframe src="vistas/modulos/alianzas/colaborador/bannerlist.php" style="width: 100%; height: 700px" name="formularios"></iframe>
<!--.....................................FIN DEL CONTENIDO........................................-->
        </div>
      </div>

    </div>
   
  </section>


</div>

