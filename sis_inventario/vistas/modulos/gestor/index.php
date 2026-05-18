<?php
$conn=new PDO('mysql:host=localhost; dbname=demo', 'root', '') or die(mysql_error());
if(isset($_POST['submit'])!=""){
  $name=$_FILES['file']['name'];
  $size=$_FILES['file']['size'];
  $type=$_FILES['file']['type'];
  $temp=$_FILES['file']['tmp_name'];
  // $caption1=$_POST['caption'];
  // $link=$_POST['link'];
  $fname = date("YmdHis").'_'.$name;
  $chk = $conn->query("SELECT * FROM  upload where name = '$name' ")->rowCount();
  if($chk){
    $i = 1;
    $c = 0;
	while($c == 0){
    	$i++;
    	$reversedParts = explode('.', strrev($name), 2);
    	$tname = (strrev($reversedParts[1]))."_".($i).'.'.(strrev($reversedParts[0]));
    // var_dump($tname);exit;
    	$chk2 = $conn->query("SELECT * FROM  upload where name = '$tname' ")->rowCount();
    	if($chk2 == 0){
    		$c = 1;
    		$name = $tname;
    	}
    }
}
 $move =  move_uploaded_file($temp,"vistas/modulos/gestor/upload/".$fname);
 if($move){
 	$query=$conn->query("insert into upload(name,fname)values('$name','$fname')");
	if($query){
	//header("location: productos");
	
	print "<script>window(function() { window.location = 'vistas/modulos/productos.php' }, 3000);</script>";

	}
	else{
	die(mysql_error());
	}
 }
}
?>

	<script src="js/jquery.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	
	<script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>

<style>
	.table{
		width: 80%;
		height: 70%;
	}

</style>
	    <div class="row-fluid">
	        <div class="span12">
	            <div class="container">
		<br>
		
		<br>
		<br>
			<form enctype="multipart/form-data" action="" name="form" method="post">
			
				<input type="text" name="titulo" id="titulo">	
				<br>
				Seleccione Archivo
					<input type="file" name="file" id="file">
					<input type="submit" name="submit" id="submit" value="Subir">
			</form>
		<br />
		<br />
		<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
			<thead>
				<tr>
					
					<th width="100%" align="center">Archivos</th>
					<th align="center">Acción</th>	
				</tr>
			</thead>
			<?php
			$query=$conn->query("select * from upload order by id desc");
			while($row=$query->fetch()){
				$name=$row['name'];
			
			?>
			<tr>
		
				<td>

					&nbsp;<?php echo $name ;?>
				</td>
				<td>
					
					<button class="btn btn-danger"><a href="vistas/modulos/gestor/download.php?filename=<?php echo $name;?>&f=<?php echo $row['fname'] ?>"><i class="fa fa-download" style="color: white;" ></i></a></button>

				</td>
			</tr>
			<?php }?>
		</table>
	</div>
	</div>
	</div>
