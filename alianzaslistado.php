<?php
  include "connect2.php";
  $conn = mysqli_connect("localhost", "root", "", "obsebarotio1");
  $tab_query = "SELECT id, pais FROM pais WHERE estado=1 ORDER BY id DESC LIMIT 10";
  $tab_result = mysqli_query($conn, $tab_query);
  $tab_menu = '';
  $tab_content = '';
  $i = 0;
  while($row = mysqli_fetch_array($tab_result))
  {
  if($i == 0)
  {
    $tab_menu .= '
    <li style="font-size:18px;" class="active"><a href="#'.$row["id"].'" data-toggle="tab">'.$row["pais"].'</a></li>
    ';
    $tab_content .= '
    <div id="'.$row["id"].'" class="tab-pane fade in active">
    ';
  }
  else
  {
    $tab_menu .= '
    <li style="font-size:18px;"><a href="#'.$row["id"].'" data-toggle="tab">'.$row["pais"].'</a></li>
    ';
    $tab_content .= '
    <div id="'.$row["id"].'" class="tab-pane fade">
    ';
  }
  $product_query = "SELECT id, titulo, email, telefono, url_web,url_image,encargado,profesion FROM clientes WHERE estado='1' AND id_pais = ".$row["id"];
  
  $product_result = mysqli_query($conn, $product_query);
  while($sub_row = mysqli_fetch_array($product_result))
  {
    $tab_content .= '
    <div class="col-md-3" style="margin-bottom:8px; border: 1px solid #ddd; width: 295px; height: 410px;
      margin-right: 15px;">
          <!-- inicio estilos auxiliares para el tamaño de la imagen -->
              <style type="text/css">
                    *{margin: 0; padding: 0;}
                    .doc{
                      display: flex;
                      flex-flow: column wrap;
                      justify-content: center;
                      align-items: center;
                      background: #ffffff;
                    }
                    .box{
                      width: 240px;
                      height: 241px;
                      background: #ffffff;
                      overflow: hidden;
                    }
                    .box img{
                      width: 100%;
                      height: auto;
                    }
                    @supports(object-fit: cover){
                        .box img{
                      /* height: 100%; */
                      height: 90%; 
                      /* object-fit: cover; */
                      object-fit: scale-down;
                      object-position: center center;
                        }
                    }
              </style>
          <!-- fin estilos auxiliares para el tamaño de la imagen -->

              <!-- inicio Caja para la imagen -->
                <div class="doc">
                  <div class="box">
                    <img src="sis_inventario/vistas/modulos/alianzas/img/banner/'.$sub_row["url_image"].'" alt="Image did not load...">
                  </div>
                </div>
                <!--fin de la Caja para la imagen -->
    
    <center>
    <div style="height:60px; margin-top: -20px; font-size:12px;">
      <a href="'.$sub_row["url_web"].'" target="_blank"><h4>'.$sub_row["titulo"].'</h4></a>
    </div>
    </center>
    <div style="height:60px; font-size:12px; text-align: justify;">
      <p><strong>'.$sub_row["profesion"].'</strong> : '.$sub_row["encargado"].'</p>
      <p><strong>Email</strong> : '.$sub_row["email"].'</p>
      <p><strong>Teléfono</strong> : '.$sub_row["telefono"].'</p>
    </div>

    </div>
    ';
  }
  $tab_content .= '<div style="clear:both"></div></div>';
  $i++;
  }
  ?>

<!DOCTYPE html>
<html>
 <head>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
  <div class="container">
   
   <ul class="nav nav-tabs">
   <?php
   echo $tab_menu;
   ?>
   </ul>
   <div class="tab-content" >
   <br />
   <?php
   echo $tab_content;
   ?>
   </div>
  </div>
 </body>
</html>
