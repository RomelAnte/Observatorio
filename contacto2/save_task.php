<?php

include('../connect2.php');

if (isset($_POST['save_task'])) {
  $nombre = $_POST['nombre'];
  $email = $_POST['email'];
  $mensaje = $_POST['mensaje'];
  $query = "INSERT INTO contacto(nombre, email, mensaje) VALUES ('$nombre', '$email' , '$mensaje')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Gracias por contactarse con nosotros.';
  $_SESSION['message_type'] = 'success';
  header('Location: ../contacto.php');

}

?>
