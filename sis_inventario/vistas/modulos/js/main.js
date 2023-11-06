function validarTextoEntrada(input, patron) {
    var texto = input.value

    var letras = texto.split("")

    for (var x in letras) {
        var letra = letras[x]

        if (!(new RegExp(patron, "i")).test(letra)) {
            letras[x] = ""
        }
    }

    input.value = letras.join("")
}

var txtSoloNumeros = document.getElementById("txtSoloNumeros")
txtSoloNumeros.addEventListener("input", function (event) {
    validarTextoEntrada(this, "[0-9]")
})

var txtSoloLetras = document.getElementById("txtSoloLetras")
txtSoloLetras.addEventListener("input", function (event) {
    validarTextoEntrada(this, "[a-z ]")
})

var txtPersonalizado = document.getElementById("txtPersonalizado")
txtPersonalizado.addEventListener("input", function (event) {
    validarTextoEntrada(this, "[0-9a-z]")
})

var txtCurp = document.getElementById("txtCurp")
txtCurp.addEventListener("input", function (event) {
    this.value = this.value.toUpperCase()
})

var txtUsuario = document.getElementById("txtUsuario")
txtUsuario.addEventListener("input", function (event) {
    this.value = this.value.toLowerCase()
})
