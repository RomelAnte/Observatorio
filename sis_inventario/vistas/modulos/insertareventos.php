<?php


include("conn.php");

?>

<?php
include("conexioneventos.php");
$con=conectar();


$titulo=$_POST['titulo'];
$fecha=$_POST['fecha'];
$hora=$_POST['hora'];
$telefono=$_POST['telefono'];
$direccion=$_POST['direccion'];
$detalle=$_POST['detalle'];


$sql="INSERT INTO alumno VALUES('$titulo','$fecha','$hora','$telefono','$direccion','$detalle')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: ../modulos/inicio.php");
    
}else {
}
?>