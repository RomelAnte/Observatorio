<?php
session_start();
$title="Editar evaluador";
/* Llamar la Cadena de Conexion*/ 
include ("../../conexion.php");
//Insert un nuevo producto
$imagen_demo="demopdf.png";
$id_evaluador=intval($_GET['id']);
$sql=mysqli_query($con,"select * from evaluador where id='$id_evaluador' limit 0,1");
$count=mysqli_num_rows($sql);
if ($count==0){
	//header("location: bannerlist.php");
	//exit;
}
$rw=mysqli_fetch_array($sql);

$nombre=$rw['nombre'];
$telefono=$rw['telefono'];
$email=$rw['email'];
$direccion=$rw['direccion'];
$url_pdf=$rw['url_pdf'];
$url_image=$rw['url_image'];
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
		 <h3 ><span class="glyphicon glyphicon-edit"></span> Editar Evaluador</h3>
			<form class="form-horizontal" id="editar_banner">
				 
			 
			  
			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Ingrese sus Nombres:</label>
				<div class="col-sm-9">
				  <input type="text" class="form-control" id="nombre" value="<?php echo $nombre;?>" name="nombre" readonly>
				  <input type="hidden" class="form-control" id="id_evaluador" value="<?php echo intval($id_evaluador);?>" name="id_evaluador">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Ingrese un número de Teléfono:</label>
				<div class="col-sm-9">
				  <input type="text" class="form-control" id="telefono" value="<?php echo $telefono;?>" readonly name="telefono">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Email:</label>
				<div class="col-sm-9">
				  <input type="email" class="form-control" id="email" value="<?php echo $email;?>" readonly name="email">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Dirección:</label>
				<div class="col-sm-9">
				  <textarea class='form-control' name="direccion" id="direccion" readonly="" rows=8><?php echo $direccion;?></textarea>
				</div>
			  </div>	
			</form>
			
			
			
		</div>
		<div class="col-md-5">
		 <h3 ><span class="glyphicon glyphicon-picture"></span> Archivo</h3>
		 
		 <form class="form-vertical">
		 
			<div class="form-group">
				
				<div class="col-sm-12">
				
				 
				 <div class="fileinput fileinput-new" data-provides="fileinput">
								  <div class="fileinput-new thumbnail" style="max-width: 100%;" >
									 
<embed src="../img/banner/<?php echo $url_pdf;?>" type="application/pdf" width="400px" height="400px" />

								  </div>
								  <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 250px; max-height: 250px;"></div>
								  <div>
									<span class="btn btn-info btn-file"><span class="fileinput-new">Seleccione un archivo</span>
									<span class="fileinput-exists" onclick="upload_image();">Cambiar Archivo</span><input type="file" name="fileToUpload" id="fileToUpload" required onchange="upload_image();"></span>
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
	
  </body>
</html>
	<script>
			function upload_image(){
				$(".upload-msg").text('Cargando...');
				var id_evaluador=$("#id_evaluador").val();
				var inputFileImage = document.getElementById("fileToUpload");
				var file = inputFileImage.files[0];
				var data = new FormData();
				data.append('fileToUpload',file);
				data.append('id',id_evaluador);
				
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

	

