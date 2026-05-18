<?php
session_start();

if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST["nombre"])){
	/* Llamar la Cadena de Conexion*/ 
	include ("../../../conexion.php");
	// escaping, additionally removing everything that could be (html/javascript-) code
     $nombre = mysqli_real_escape_string($con,(strip_tags($_POST['nombre'], ENT_QUOTES)));
	 $telefono = mysqli_real_escape_string($con,($_POST['telefono']));
	 $email = mysqli_real_escape_string($con,($_POST['email']));
	 $facebook_eva = mysqli_real_escape_string($con,($_POST['facebook_eva']));
	 $linked_eva = mysqli_real_escape_string($con,($_POST['linked_eva']));
	 $sobremi_eva = mysqli_real_escape_string($con,($_POST['sobremi_eva']));
	 $direccion = mysqli_real_escape_string($con,($_POST['direccion']));
	 $estado = intval($_POST['estado']);
	 $id_evaluador=intval($_POST['id_evaluador']);
	 
	/* $telefono=intval($_POST['telefono']);
	 $email=intval($_POST['email']);
	 $direccion=intval($_POST['direccion']);
	*/
	 $sql="UPDATE evaluador SET nombre='$nombre', telefono='$telefono', email='$email', facebook_eva='$facebook_eva', linked_eva='$linked_eva', sobremi_eva='$sobremi_eva', direccion='$direccion',estado='$estado' WHERE id='$id_evaluador'";
	 $query = mysqli_query($con,$sql);
	// if user has been added successfully
	if ($query) {
		$messages[] = "Datos  han sido actualizados satisfactoriamente.";
	} else {
		$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($con);
	}
	
	if (isset($errors)){
			
			?>
			<div class="alert alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>Error!</strong> 
					<?php
						foreach ($errors as $error) {
								echo $error;
							}
						?>
			</div>
			<?php
		}
		if (isset($messages)){
			
			?>
			<div class="alert alert-success" role="alert">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>¡Bien hecho!</strong>
					<?php
						foreach ($messages as $message) {
								echo $message;
							}
						?>
			</div>
			<?php
		}
		
}
?>