<?php
	
	//  Conexión con MySQL
	
	require_once('../conn.php');

	if (isset($_POST['image_id'])) {
		
		$image_id = $_POST['image_id'];
	}
	
	if (!empty($_FILES['file_name']['name'])) {

		$fileTmp = $_FILES['file_name']['tmp_name'];

		$allowImg = array('png','jpeg','jpg','gif');

		$fileExnt = explode('.', $_FILES['file_name']['name']);

		$fileActExt   = strtolower(end($fileExnt));

		$newFile = 	rand(). '.'. $fileActExt;

		$destination = 'uploads/'.$newFile;

		if (in_array($fileActExt, $allowImg)) {
			if ($_FILES['file_name']['size'] > 0 && $_FILES['file_name']['error']==0) {

				$query = "SELECT * FROM gallery WHERE id = '$image_id'";

				$result = mysqli_query($conn, $query);

				$row = mysqli_fetch_assoc($result);

				$filePath = 'uploads/'.$row['images'];
				
				if (move_uploaded_file($fileTmp, $destination)) {
					$update = "UPDATE gallery SET images = '$newFile' WHERE id = '$image_id'";
					mysqli_query($conn, $update);
					unlink($filePath);
				}
			}
		}
	}
		
?>