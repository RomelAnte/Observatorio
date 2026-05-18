<?php
/*
if($_SESSION["perfil"] == "Estudiante"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}
*/
?>
<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Publicaciones
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar Publicación</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarProducto">
          <a style="color:#fff;" href="crear-publicacion">Agregar</a>
          

        </button>

      </div>

      <div class="box-body">
        
       <table class="" width="100%" style="padding:10px;" >
         
        <thead>
         
           <th style="width:10px">#</th>
           <th>Autor</th>
           <th>Título</th>
           <th>Código</th>
           <!--<th>Descripción</th>-->
           <th>Estado</th>
           <!--<th>Agregado</th>-->
           <th>Acciones</th>

        </thead>
        <tbody>
          
         <?php
        include('conn.php');
        
        
        $query=mysqli_query($conn,"select * from publicaciones");
        while($row=mysqli_fetch_array($query)){
          ?>
          <tr>
            <td><?php echo $row['id']; ?></td>
            <?php
             $itemUsuario = "id";
                  $valorUsuario = $row["id_usuario"];

                  $respuestaUsuario = ControladorUsuarios::ctrMostrarUsuarios($itemUsuario, $valorUsuario);

                 
                  echo '<td>'.$respuestaUsuario["nombre"].'</td>';
            ?>
          
            <td><?php echo $row['titulo']; ?></td>
            <td><?php echo $row['codigo']; ?></td>
            <!--<td><?php //echo $row['descripcion']; ?></td>-->
           
            <?php
            if($row["estado"] != 0){

                    echo '<td>
                            <button class="btn btn-success">Aprobado</button>
                          </td>';

                  }else{

                    echo '<td><button class="btn btn-danger">Pendiente</button></td>';

                  } 
            ?>

            <!--<td><?php //echo $row['fecha']; ?></td>-->
            <td>
              <a href="editar-publicacion?id=<?php echo $row['id'];?>" data-toggle="modal" class="btn btn-warning"><i class="fa fa-pencil"></i> </a> 
              <a href="#del<?php echo $row['id']; ?>" data-toggle="modal" class="btn btn-danger"><i class="fa fa-times"></i></a>
              
            </td>
            <td>
              
              
            </td>
          </tr>
          <?php
        }
      ?>
        </tbody>      

       </table>

       <input type="hidden" value="<?php echo $_SESSION['perfil']; ?>" id="perfilOculto">

      </div>

    </div>

  </section>

</div>




