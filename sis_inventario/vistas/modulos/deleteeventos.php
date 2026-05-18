
<?php

include("conexioneventos.php");
include("conn.php");
$con=conectar();

$cod_estu=$_GET['id'];

$sql="DELETE FROM alumno  WHERE cod_estu='$cod_estu'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: ../modulos/inicio.php");
    }
?>
