<?php

	// Database connection 
	
	require_once('../conn.php');

	$query = "SELECT * FROM gallery ORDER BY id ASC";
	
	$result = mysqli_query($conn, $query);
	
	$output = "";

	if (mysqli_num_rows($result) > 0) {
		$output .= "<table class='table table-striped' style='width: 93%;'>";
		$output .= "<thead>
			        <tr>
			          <th>#</th>
			          <th>Imagen</th>
			          <th>Editar</th>
			          <th>Borrar</th>
			        </tr>
			      </thead>";
		while ($row = mysqli_fetch_assoc($result)) {
		$images = 'vistas/modulos/galeria/uploads/'. $row['images'];
		$output .=  "<tr>
			          <td>".$row["id"]."</td>
			          <td><img style='width: 250px; height: 200px;' src='".$images."' class='img-thumbnail' /></td>
			          <!-- ARREGLAR EL BOTON EDITAR//////////////////
			          <td><button type='button' class='btn btn-warning btn-sm' data-toggle='modal' data-target='#exampleModal' data-id='".$row["id"]."'><i class='fa fa-pencil'></i></button></td>
			          -->
			          <td><button type='button' class='btn btn-success btn-sm' data-toggle='modal' data-target='#exampleModal' data-id='".$row["id"]."'>Editar</button></td>
			          
			          <td><button type='button' class='btn btn-danger btn-sm delete-btn' data-id='".$row["id"]."'><i class='fa fa-times'></i></button></td>
			        </tr>";
		}
		$output .="</tbody>
    			</table>";
    	echo $output;
	}else{
		echo "<hr><h5 style='text-align:center'>No se ha encontrado ninguna imagen</h5>";
	}

?>