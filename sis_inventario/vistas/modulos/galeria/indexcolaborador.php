
<div class="container">
<form id="submitForm">
  <div class="row">
      <div class="col-md-6">
      <div class="input-group">
 		 <div class="custom-file mb-3">
            <input type="file" class="custom-file-input" name="multipleFile[]" id="multipleFile" required="" multiple>
            <br>
            <label class="custom-file-label" for="multipleFile">Puede elegir varias imágenes.</label>
          </div>
	  </div>
      </div>
      <div class="col-md-2">
      <button type="submit" name="upload" class="btn btn-primary">Cargar Archivos</button>
      </div>
      
    </div>
    </form>
</div>
<br>
<hr>
<div class="container">
<!--
<div class="row">
    <div class="col-md-12">
     <div  style="width: 92%;" class="alert alert-success alert-dismissible" id="success" style="display: none;">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          El archivo se ha cargado correctamente
        </div>
    </div>
</div>
-->
    </div>

  <!-- view of uploaded images -->
  <div class="container" id="gallery"></div>

  <!--Edit Multiple image form -->
  <div class='modal' id='exampleModal'>
    <div class='modal-dialog'>
      <div class='modal-content'>
        <div class='modal-header'>
          <h4 class='modal-title'>Actualizar imagen</h4>
          <button type='button' class='close' data-dismiss='modal'>&times;</button>
        </div>
        <div id="editForm">

        </div>
      </div>    
    </div>
  </div>



<script type="text/javascript">
$(document).ready(function(){
	$("#submitForm").on("submit", function(e){
    e.preventDefault();
    $.ajax({
      url  :"vistas/modulos/galeria/upload.php",
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
      url  : "vistas/modulos/galeria/fetch_data.php",
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
      url : "vistas/modulos/galeria/edit.php",
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
        url  : "vistas/modulos/galeria/delete.php",
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
      url  : "vistas/modulos/galeria/update.php",
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


