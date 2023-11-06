<?php 
  include('vistas/modulos/conn.php');
//$conn = mysqli_connect('localhost','root','','sis_inventario');
  //$query = "select * from proyecto WHERE id=id and estado='1'";
 
$nombre = '';
$email = '';
$mensaje= '';

if  (isset($_GET['id'])) {
  $id = $_GET['id'];
  $query = "SELECT * FROM contacto WHERE id=$id";
  $resultado = mysqli_query($conn, $query);
  if (mysqli_num_rows($resultado) == 1) {
    $row = mysqli_fetch_array($resultado);
    $nombre = $row['nombre'];
    $email = $row['email'];
    $mensaje = $row['mensaje'];
  }
}

?>

<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Contactenos
    
    </h1>
   

    <ol class="breadcrumb">
      
      <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Contactenos</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="row">

      <!--=====================================
      EL FORMULARIO
      ======================================-->
<?php foreach($resultado as $row):?>
      <div class="col-lg-12 col-xs-12">
        
        <div class="box box-success">
          
          <div class="box-header with-border"></div>

          
          <form enctype="multipart/form-data" action="" name="form" method="post">

            <div class="box-body">
<!--===============///////////////////////////////////////////================ -->  
              <div class="box">

<!--================ ENTRADA PARA EL AUTOR================ -->
             <div class="form-group row">


                <div class="col-xs-6">
                
                  <div class="input-group">
                  
                    <span class="input-group-addon"><i class="fa fa-user"></i></span> 

                    <input type="text" class="form-control input-lg" id="nuevoVendedor" value="<?php echo $row['nombre']; ?>" readonly>

                    <input type="hidden" name="idVenta" value="<?php echo $row['id']; ?>">

                  </div>

                </div>

<!-- ================ENTRADA PARA EL CODIGO DE LA PUBLICACION================ -->

                <div class="col-xs-6">
                
                  <div class="input-group">
                  
                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                    <input type="text" class="form-control input-lg" name="email" value="<?php echo $row['email']; ?>" id="email" readonly>

                  </div>
                          
                </div>

            </div>
<!--===================ENTRADA nombre======================================-->
                <div class="form-group">
                  
                  <div class="input-group">
                    
                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                    <input type="text" class="form-control input-lg" name="nombre" placeholder="Ingresar el título de la publicación" id="nombre" required>
                  </div>
                </div>
<!--===================ENTRADA mensaje======================================-->
                <div class="form-group">
                  
                  <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                    <textarea rows="10"  id="mensaje" name="mensaje" class="form-control input-lg"></textarea>
                  </div>
                </div> 
<!--===================FIN ENTRADA mensaje======================================-->  
              </div>
<!--================ ///////////////////////////////////////////////////////////////================ -->
          Seleccione Archivo<input type="file" name="file" id="file">
          </div>
          <input type="submit" name="submit" id="submit" value="Subir" class="form-control input-lg" style="background: #312783; color: #fff;">

        </form>

        </div>
      </div>
<?php endforeach;?>  
    </div>
   
  </section>


</div>
