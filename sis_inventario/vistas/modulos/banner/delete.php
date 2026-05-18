<?php
	
	// Conexión con MySQL
	
	require_once('../conn.php');

	if (isset($_POST['deleteId'])) {
		
		$deleteId = $_POST['deleteId'];

		$sql = "SELECT * FROM table_images WHERE id = $deleteId";

		$result = mysqli_query($conn, $sql);

		$row = mysqli_fetch_assoc($result);

		$filePath = 'uploads/'.$row['images'];

		$query = "DELETE FROM table_images WHERE id = $deleteId";

		if (mysqli_query($conn, $query)) {
			unlink($filePath);
		}
	}

?>