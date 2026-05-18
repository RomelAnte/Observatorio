<?php  
//select.php  
if(isset($_POST["personal_id"]))
{
 $output = '';
 //$connect = mysqli_connect("localhost", "root", "", "sis_inventario");
 include('conn.php');
 $query = "SELECT * FROM contacto WHERE id = '".$_POST["personal_id"]."'";
 $result = mysqli_query($conn, $query);
 $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">';
    while($row = mysqli_fetch_array($result))
    {
     $output .= '
     <tr  style="text-align: justify;">  
            <td width="30%"><label>Nombre:</label></td>  
            <td width="70%">'.$row["nombre"].'</td>  
        </tr>
        <tr>  
            <td width="30%"><label>Email:</label></td>  
            <td width="70%">'.$row["email"].'</td>  
        </tr>
        <tr>  
            <td width="30%"><label>Mensaje:</label></td>  
            <td width="70%">'.$row["mensaje"].'</td>  
        </tr>
     ';
    }
    $output .= '</table></div>';
    echo $output;
}
?>
