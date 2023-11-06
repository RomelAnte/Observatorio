
<!--....................................................................................................-->
<?php

if($_SESSION["perfil"] == "Estudiante" || $_SESSION["perfil"] == "Docente"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}

?>


<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Banner
    
    </h1>
    <br>
    <span style="text-align: justify;" >
      
    </span>

    <ol class="breadcrumb">
      
      <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Banner</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="row">

      <!--=====================================
      EL FORMULARIO
      ======================================-->
      
      <style type="text/css">
              .w3-border-blue, .w3-hover-border-blue:hover {
                  border-color: #2196F3!important;
              }
              .w3-pale-blue, .w3-hover-pale-blue:hover {
                  color: #000!important;
                  background-color: #ddffff!important;
              }
              .w3-leftbar {
                  border-left: 6px solid #ccc!important;
              }
              .w3-panel {
                  margin-top: 16px;
                  margin-bottom: 16px;
              }
              .w3-container, .w3-panel {
                  padding: 0.01em 16px;
              }
            </style>

      <div class="col-lg-12 col-xs-12">

        <div class="box box-success">
          <div class="w3-panel w3-leftbar w3-border-blue w3-pale-blue" style="width: 100%;">
            
            
            <p style="display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px;"> Se recomienda que la imagen tenga una dimensión de 1949 x 755 pixeles. 
            </p>
          </div>
          <div class="box-header with-border"></div>

<!--.................INICIO DEL CONTENIDO........................-->
<?php include "banner/index.php"; ?>

<!--...................FIN DEL CONTENIDO.........................-->
        </div>
      </div>

    </div>
   
  </section>


</div>





<script type="text/javascript">
$(document).ready(function(){
  $("#submitForm").on("submit", function(e){
    e.preventDefault();
    $.ajax({
      url  :"upload.php",
      type :"POST",
      cache:false,
      contentType : false, // you can also use multipart/form-data replace of false
      processData : false,
      data: new FormData(this),
      success:function(response){
        $("#success").show();
        $("#multipleFile").val("");
        fetchData();
      }
    });
  });

  // Fetch Data from Database
  function fetchData(){
    $.ajax({
      url  : "fetch_data.php",
      type : "POST",
      cache: false,
      success:function(data){
        $("#gallery").html(data);
      }
    });
  }
  fetchData();

  // Edit Data from Database
  $(document).on("click",".btn-success", function(){
    var editId = $(this).data('id');
    $.ajax({
      url : "edit.php",
      type : "POST",
      cache: false,
      data : {editId:editId},
      success:function(data){
        $("#editForm").html(data);
      }
    });
  });

  // Delete Data from database

  $(document).on('click','.delete-btn', function(){
    var deleteId = $(this).data('id');
    if (confirm("¿Está seguro de que desea eliminar esta imagen?")) {
      $.ajax({
        url  : "delete.php",
        type : "POST",
        cache:false,
        data:{deleteId:deleteId},
        success:function(data){
      $("#success").show();
          fetchData();
          //alert("La imagen eliminada correctamente");
        }
      });
    }
  });

  // Update Data from database
  $(document).on("submit", "#editForm", function(e){
  e.preventDefault();
  var formData = new FormData(this);
  $.ajax({
      url  : "update.php",
      type : "POST",
      cache: false,
      contentType : false, // you can also use multipart/form-data replace of false
      processData : false,
      data: formData,
      success:function(response){
        $("#exampleModal").modal('hide');
        alert("Imagen actualizada correctamente");
        fetchData();
      }
    });
  });
});

</script>
