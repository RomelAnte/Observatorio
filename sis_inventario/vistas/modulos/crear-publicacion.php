
<?php

$conn=new PDO('mysql:host=localhost; dbname=sis_inventario', 'root', '') or die(mysql_error());
//$conn = mysqli_connect('localhost','root','','sis_inventario');
if(isset($_POST['submit'])!=""){
  $name=$_FILES['file']['name'];
  $size=$_FILES['file']['size'];
  $type=$_FILES['file']['type'];
  $temp=$_FILES['file']['tmp_name'];
  $titulo=$_POST['titulo'];
  $codigo=$_POST['codigo'];
  $idUsuario=$_POST["idUsuario"];
  $descripcion=$_POST["descripcion"];
  // $caption1=$_POST['caption'];
  // $link=$_POST['link'];
  $fname = date("YmdHis").'_'.$name;
  $chk = $conn->query("SELECT * FROM  publicaciones where name = '$name' ")->rowCount();
  if($chk){
    $i = 1;
    $c = 0;
  while($c == 0){
      $i++;
      $reversedParts = explode('.', strrev($name), 2);
      $tname = (strrev($reversedParts[1]))."_".($i).'.'.(strrev($reversedParts[0]));
    // var_dump($tname);exit;
      $chk2 = $conn->query("SELECT * FROM  publicaciones where name = '$tname' ")->rowCount();
      if($chk2 == 0){
        $c = 1;
        $name = $tname;
      }
    }
}
 $move =  move_uploaded_file($temp,"vistas/modulos/upload/".$fname);
 if($move){
  $query=$conn->query("insert into publicaciones(id_usuario,name,fname,codigo,titulo,descripcion, estado)values('$idUsuario','$name','$fname','$codigo','$titulo','$descripcion','1')");
  if($query){
  //header("location: productos");
  
  print "<script>window(function() { window.location = 'vistas/modulos/crear_publicacion' }, 3000);</script>";

  }
  else{
  die(mysql_error());
  }
 }
}
?>
<!--....................................................................................................-->
<?php
/*
if($_SESSION["perfil"] == "Estudiante"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}
*/
?>


<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Crear Publicaciones
    
    </h1>
    <br>
    <span style="text-align: justify;" >
      Una vez que presione en el boton "Guardar", usted debera esperar un lapso de 24horas para que su publicación sea aprovada.
    </span>

    <ol class="breadcrumb">
      
      <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Crear Publicación</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="row">

      <!--=====================================
      EL FORMULARIO
      ======================================-->
      
      <div class="col-lg-12 col-xs-12">
        
        <div class="box box-success">
          
          <div class="box-header with-border"></div>

          
          <form enctype="multipart/form-data" action="" name="form" method="post">

            <div class="box-body">
<!--================ ///////////////////////////////////////////////////////////////================ -->  
              <div class="box">

<!--================ ENTRADA PARA EL AUTOR================ -->
             <div class="form-group row">


                <div class="col-xs-6">
                
                  <div class="input-group">
                  
                    <span class="input-group-addon"><i class="fa fa-user"></i></span> 

                    <input type="text" class="form-control input-lg" id="nuevoVendedor" value="<?php echo $_SESSION["nombre"]; ?>" readonly>

                    <input type="hidden" name="idUsuario" value="<?php echo $_SESSION["id"]; ?>">

                  </div>

                </div>

<!-- ================ENTRADA PARA EL CODIGO DE LA PUBLICACION================ -->

                <div class="col-xs-6">
                
                  <div class="input-group">
                  
                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                    <input type="text" class="form-control input-lg" name="codigo" placeholder="Ingresar un código" id="codigo" required>

                  </div>
                          
                </div>

            </div>
<!--===================ENTRADA TITULO======================================-->
                <div class="form-group">
                  
                  <div class="input-group">
                    
                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                    <input type="text" class="form-control input-lg" name="titulo" placeholder="Ingresar el título de la publicación" id="titulo" required>
                  </div>
                </div>
<!--===================ENTRADA DESCRIPCION======================================-->
                <div class="form-group">
                  
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                    <textarea rows="10"  id="descripcion" name="descripcion" class="form-control input-lg"></textarea>
                  </div>
                </div> 
<!--===================FIN ENTRADA DESCRIPCION======================================-->  
              </div>
<!--================ ///////////////////////////////////////////////////////////////================ -->
          Seleccione Archivo<input type="file" name="file" id="file">
          </div>
          <input type="submit" name="submit" id="submit" value="Subir" class="form-control input-lg" style="background: #312783; color: #fff;">

        </form>

        </div>
      </div>

    </div>
   
  </section>


</div>

