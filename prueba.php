<!DOCTYPE html>
<html>
<head>
<title>Pruebas</title>
<script type="text/javascript">
    function myFunction() {
  window.alert('Input validado');
}
</script>


</head>
<body>

<form action="#" onsubmit="myFunction()">
    <label htmlFor="phone">Escriba un número de teléfono</label>
    <input id="phone" type="text" name="phone" minlength="7" i pattern="\x2b[0-9]+" size="20" placeholder="+54976284353" required>
    <button type="submit">Validar</button>
</form>
</body>
</html>
