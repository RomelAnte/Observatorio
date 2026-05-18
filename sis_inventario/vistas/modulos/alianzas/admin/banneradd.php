<?php
session_start();
$title="Agregar Alianzas";
/* Llamar la Cadena de Conexion*/ 
include ("../../conexion.php");
//Insert un nuevo producto
$imagen_demo="demo.png";
$insert=mysqli_query($con,"insert into clientes (url_image, estado, id_pais) values ('$imagen_demo','0','0')");
$sql_last=mysqli_query($con,"select LAST_INSERT_ID(id) as last from clientes order by id desc limit 0,1");
$rw=mysqli_fetch_array($sql_last);
$id_banner=intval($rw['last']);
$sql=mysqli_query($con,"select * from clientes where id='$id_banner' limit 0,1");
$count=mysqli_num_rows($sql);
if ($count==0){
	//header("location: bannerlist.php");
	//exit;
}
$rw=mysqli_fetch_array($sql);
$titulo=$rw['titulo'];
$email=$rw['email'];
$telefono=$rw['telefono'];
$encargado=$rw['encargado'];
$profesion=$rw['profesion'];
$direccion=$rw['direccion'];
$url_web=$rw['url_web'];
$url_image=$rw['url_image'];

$id_pais=intval($rw['id_pais']);
$estado=intval($rw['estado']);

$active_config="active";
$active_banner="active";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../images/ico/favicon.ico">
    <title><?php echo $title;?></title>
    <!-- Bootstrap core CSS -->
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
	<link href="css/preview-image.css" rel="stylesheet">
  </head>
  <body>
		<?php include("top_menu.php");?>

    <div class="container">
		
      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
		 <div class="col-md-7">
		 <h3 ><span class="glyphicon glyphicon-edit"></span> Agregar Alianzas</h3>
			<form class="form-horizontal" id="editar_banner">
				 
			 
			  
			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Nombre de la Institución:</label>
				<div class="col-sm-9">
				  <input type="text" class="form-control" id="titulo" value="<?php echo $titulo;?>" required name="titulo" autocapitalize="words" oninput="validarTextoEntrada(this, '[a-záéíóúñ ]')" placeholder="Ej: Universidad Tecnica de Cotopaxi">
				  <input type="hidden" class="form-control" id="id_banner" value="<?php echo intval($id_banner);?>" name="id_banner">

				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Email:</label>
				<div class="col-sm-9">
				  <input type="email" class="form-control" id="email" value="<?php echo $email;?>" required name="email"autocapitalize="off" oninput="validarTextoEntrada(this, '[a-z0-9_@.]')" placeholder="Ej: ejemplo123@gmail.com">
				</div>
			  </div>
			  
			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Número de Teléfono:</label>
				<div class="col-sm-9">
				  <input type="tel" class="form-control" id="telefono" value="<?php echo $telefono;?>" name="telefono" pattern="\([0-9]{3}\) [0-9]{3}[ -][0-9]{3}[ -][0-9]{3}" title="Un número de teléfono válido consta de un código de País de 3 dígitos entre paréntesis, el número telefónico se agrupa de tres dígitos separados por un espacio o guión (-)." required autocapitalize="words" placeholder="Ej: 	(593) 984-614-440">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Encargado:</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="encargado" value="<?php echo $encargado;?>" required name="encargado"autocapitalize="off" oninput="validarTextoEntrada(this, '[a-záéíóúñ ]')" placeholder="Ej: Nombre y Apellido">
				</div>
			  </div>	
			  
				<div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Cargo:</label>
				<div class="col-sm-9">
				  <input type="text" class="form-control" id="profesion" value="<?php echo $profesion;?>" required name="profesion"autocapitalize="off" oninput="validarTextoEntrada(this, '[a-záéíóúñ ]')" placeholder="Ej: Rector">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Dirección:</label>
				<div class="col-sm-9">
				  <textarea class='form-control' name="direccion" id="direccion" required rows=6 placeholder="Ej: Av. Jorge Salvador Lara S39 - Quito"><?php echo $direccion;?></textarea>
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">URL Sitio Web:</label>
				<div class="col-sm-9">
				  
				  <input type="webdesign" class="form-control" id="url_web" value="<?php echo $url_web;?>" required name="url_web"autocapitalize="off" placeholder="Ej: nombredelsitioweb.com">
				</div>
			  </div>
			  
			  <div class="form-group">
				<label for="orden" class="col-sm-3 control-label">País</label>
				<div class="col-sm-9">
				  <select class="form-control" id="id_pais" required name="id_pais">
					<option value="1" <?php if($estado==1){echo "selected";} ?>>Argentina</option>
					<option value="2" <?php if($estado==2){echo "selected";} ?>>Colombia</option>
					<option value="3" <?php if($estado==3){echo "selected";} ?>>Cuba</option>
					<option value="4" <?php if($estado==4){echo "selected";} ?>>Ecuador</option>
				 </select>
				</div>
			  </div>
			  
			  
			  <div class="form-group">
				<label for="estado" class="col-sm-3 control-label">Estado</label>
				<div class="col-sm-9">
				  <select class="form-control" id="estado" required name="estado">
					<option value="0" <?php if($estado==0){echo "selected";} ?>>Inactivo</option>
					<option value="1" <?php if($estado==1){echo "selected";} ?>>Activo</option>
				 </select>
				</div>
			  </div>
			  
			
			 
			  
			  
			  <div class="form-group">
			  <div id='loader'></div>
			  <div class='outer_div'></div>
				<div class="col-sm-offset-3 col-sm-9">
				  <button type="submit" class="btn btn-success">Actualizar datos</button>
				</div>
			  </div>

			</form>
			
			
			
		</div>
		<div class="col-md-5">
		 <h3 ><span class="glyphicon glyphicon-picture"></span> Imagen</h3>
		 
		 <form class="form-vertical">
		 
			<div class="form-group">
				
				<div class="col-sm-12">
				
				 
				 <div class="fileinput fileinput-new" data-provides="fileinput">
								  <div class="fileinput-new thumbnail" style="max-width: 100%;" >
									  <img class="img-rounded" src="../img/banner/<?php echo $url_image;?>" />
								  </div>
								  <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 250px; max-height: 250px;"></div>
								  <div>
									<span class="btn btn-info btn-file"><span class="fileinput-new">Selecciona una imagen</span>
									<span class="fileinput-exists" onclick="upload_image();">Cambiar imagen</span><input type="file" name="fileToUpload" id="fileToUpload" required onchange="upload_image();"></span>
									<a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">Cancelar</a>
								  </div>
					</div>
					<div class="upload-msg"></div>
					
				</div>
				
			  </div>
			  
			
			  
			 
			  
			  
		 </form>
		</div>
    </div> 
	</div><!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="js/jasny-bootstrap.min.js"></script>
	<script src="js/main.js"></script>
  </body>
</html>
	<script>
			function upload_image(){
				$(".upload-msg").text('Cargando...');
				var id_banner=$("#id_banner").val();
				var inputFileImage = document.getElementById("fileToUpload");
				var file = inputFileImage.files[0];
				var data = new FormData();
				data.append('fileToUpload',file);
				data.append('id',id_banner);
				
				$.ajax({
					url: "ajax/upload_banner.php",        // Url to which the request is send
					type: "POST",             // Type of request to be send, called as method
					data: data, 			  // Data sent to server, a set of key/value pairs (i.e. form fields and values)
					contentType: false,       // The content type used when sending data to the server.
					cache: false,             // To unable request pages to be cached
					processData:false,        // To send DOMDocument or non processed data file it is set to false
					success: function(data)   // A function to be called if request succeeds
					{
						$(".upload-msg").html(data);
						window.setTimeout(function() {
						$(".alert-dismissible").fadeTo(500, 0).slideUp(500, function(){
						$(this).remove();
						});	}, 5000);
					}
				});
				
			}
			
			function eliminar(id){
				var parametros = {"action":"delete","id":id};
						$.ajax({
							url:'ajax/upload2.php',
							data: parametros,
							 beforeSend: function(objeto){
							$(".upload-msg2").text('Cargando...');
						  },
							success:function(data){
								$(".upload-msg2").html(data);
								
							}
						})
					
				}
				
				
				
				
			
	</script>
	<script>
		$("#editar_banner").submit(function(e) {
			
			  $.ajax({
				  url: "ajax/editar_banner.php",
				  type: "POST",
				  data: $("#editar_banner").serialize(),
				   beforeSend: function(objeto){
					$("#loader").html("Cargando...");
				  },
				  success:function(data){
						$(".outer_div").html(data).fadeIn('slow');
						$("#loader").html("");
					}
			});
			 e.preventDefault();
		});
	</script>

	

