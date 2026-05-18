<!DOCTYPE html>
<?php
include_once 'config.inc.php';
if (isset($_POST['subir'])) {
    $nombre = $_FILES['archivo']['name'];
    $tipo = $_FILES['archivo']['type'];
    $tamanio = $_FILES['archivo']['size'];
    $ruta = $_FILES['archivo']['tmp_name'];
    $destino = "vistas/modulos/subirpdf/archivos/" . $nombre;
    if ($nombre != "") {
        if (copy($ruta, $destino)) {
            $nuevaVenta= $_POST['nuevaVenta'];
            $idVendedor= $_POST['idVendedor'];
            $db=new Conect_MySql();
            $sql = "INSERT INTO ventas (codigo,id_vendedor,tamanio,tipo,nombre_archivo) VALUES('$nuevaVenta','$idVendedor','$tamanio','$tipo','$nombre')";
            $query = $db->execute($sql);
            if($query){
                echo "Se guardo correctamente";
            }
        } else {
            echo "Error";
        }
    }
}
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <div style="width: 400px;margin: auto;border: 1px solid blue;padding: 30px;">
            <h4>Subir Hoja de Vida en formato PDF</h4>
            <form method="post" action="" enctype="multipart/form-data">
                <table>
                    <tr>
                    <!--
                        <td><label>Titulo</label></td>
                        <td><input type="text" name="titulo"></td>
                    -->
                    <input type="text" class="form-control" id="nuevoVendedor" value="<?php echo $_SESSION["nombre"]; ?>" readonly>

                    <input type="hidden" name="idVendedor" value="<?php echo $_SESSION["id"]; ?>">
                    </tr>
                    <tr>
                    <!--
                        <td><label>Descripcion</label></td>
                        <td><textarea name="descripcion"></textarea></td>
                    -->
                    <?php
                    $item = null;
                    $valor = null;
                    $ventas = ControladorVentas::ctrMostrarVentas($item, $valor);
                    if(!$ventas){
                      echo '<input type="text" class="form-control" id="nuevaVenta" name="nuevaVenta" value="10001" readonly>';
                    }else{
                      foreach ($ventas as $key => $value) {
                      }
                      $codigo = $value["codigo"] + 1;
                      echo '<input type="text" class="form-control" id="nuevaVenta" name="nuevaVenta" value="'.$codigo.'" readonly>';
                    }
                    ?>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="file" name="archivo"></td>
                    <tr>
                        <td><input type="submit" value="subir" name="subir"></td>
                        <td><a href="vistas/modulos/subirpdf/lista.php">lista</a></td>
                    </tr>
                </table>
            </form>            
        </div>
    </body>
</html>
