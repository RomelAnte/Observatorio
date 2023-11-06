<?php
session_start();
$title="Agregar evaluador";
/* Llamar la Cadena de Conexion*/ 
include ("../../conexion.php");
//Insert un nuevo producto
$imagen_demo="demo.png";
$insert=mysqli_query($con,"insert into evaluador (url_image, estado) values ('$imagen_demo','0')");
$sql_last=mysqli_query($con,"select LAST_INSERT_ID(id) as last from evaluador order by id desc limit 0,1");
$rw=mysqli_fetch_array($sql_last);
$id_evaluador=intval($rw['last']);
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
$facebook_eva=$rw['facebook_eva'];
$linked_eva=$rw['linked_eva'];
$sobremi_eva=$rw['sobremi_eva'];
$direccion=$rw['direccion'];
$url_image=$rw['url_image'];
$url_pdf=$rw['url_pdf'];

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
		 <h3 ><span class="glyphicon glyphicon-edit"></span> Agregar Evaluador</h3>
			<form class="form-horizontal" id="editar_banner">
				<div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Ingrese sus Nombres:</label>
				<div class="col-sm-9">
				  <input type="text" class="form-control" id="nombre" value="<?php echo $nombre;?>" required name="nombre" autocapitalize="words" oninput="validarTextoEntrada(this, '[a-záéíóúñ ]')" placeholder="Ej: Bryan Mauricio Yambay Flores">
				  <input type="hidden" class="form-control" id="id_evaluador" value="<?php echo intval($id_evaluador);?>" name="id_evaluador">
				</div>
			  </div>
<!--CAJA PARA LOS NUMEROS INTERNACIONALES-->
			 
			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Ingrese un número de Teléfono:</label>
				<div class="col-sm-9">
				 <input type="tel" class="form-control" id="telefono" value="<?php echo $telefono;?>" name="telefono" pattern="\([0-9]{3}\) [0-9]{3}[ -][0-9]{3}[ -][0-9]{3}" title="Un número de teléfono válido consta de un código de País de 3 dígitos entre paréntesis, el número telefónico se agrupa de tres dígitos separados por un espacio o guión (-)." required autocapitalize="words" placeholder="Ej: 	(593) 984-614-440">
				</div>
			  </div>

<!--FIN CAJA PARA LOS NUMEROS INTERNACIONALES-->

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Email:</label>
				<div class="col-sm-9">
				  <input type="email" class="form-control" id="email" value="<?php echo $email;?>" required name="email"autocapitalize="off" oninput="validarTextoEntrada(this, '[a-z0-9_@.]')" placeholder="Ej: ejemplo123@gmail.com">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Facebook:</label>
				<div class="col-sm-9">
				  <input type="url" class="form-control" id="facebook_eva" value="<?php echo $facebook_eva;?>"  name="facebook_eva" placeholder="Ingrese el link de su página de Facebook">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">LinkedIn:</label>
				<div class="col-sm-9">
				  <input type="url" class="form-control" id="linked_eva" value="<?php echo $linked_eva;?>"  name="linked_eva" placeholder="Ingrese el link de su página de LinkeInk">
				</div>
			  </div>

			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Dirección:</label>
				<div class="col-sm-9">
				  <textarea class='form-control' name="direccion" id="direccion" required rows=8 placeholder="Ej: Av. Jorge Salvador Lara S39 - Quito"><?php echo $direccion;?></textarea>
				</div>
			  </div>

			  <script type="text/javascript">
					contenido_textarea = ""
					num_caracteres_permitidos = 700

					function valida_longitud(){
					   num_caracteres = document.forms[0].sobremi_eva.value.length
					   if (num_caracteres > num_caracteres_permitidos) {
					      document.forms[0].sobremi_eva.value = contenido_textarea
					   }else{
					      contenido_textarea = document.forms[0].sobremi_eva.value
					   }

					   if (num_caracteres >= num_caracteres_permitidos){
					      document.forms[0].caracteres.style.color="#ff0000";
					   }else{
					      document.forms[0].caracteres.style.color="#000000";
					   }
					   cuenta()
					}

					function cuenta(){
					   document.forms[0].caracteres.value=document.forms[0].sobremi_eva.value.length
					}
				 </script>	
			  
			  <div class="form-group">
				<label for="titulo" class="col-sm-3 control-label">Sobre Mí:</label>
				<div class="col-sm-9">
				  
					 	<textarea class='form-control' name="sobremi_eva" id="sobremi_eva" required rows=8 placeholder="Ingrese una descripción sobre su ámbito académico o laboral." onKeyDown="valida_longitud()" onKeyUp="valida_longitud()"><?php echo $sobremi_eva;?></textarea>
							<p>Caracteres: <input type="text" name="caracteres" size="4" disabled> (*) N&uacute;mero m&aacute;ximo de car&aacute;cteres = 700</p>
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
				  <button type="submit" class="btn btn-success">Guardar</button>
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

	

