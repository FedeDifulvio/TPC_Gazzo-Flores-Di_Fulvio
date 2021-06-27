﻿
const esDigito = dato => {
    const validar = parseInt(dato)
    if (Number.isInteger(validar)) {
        return true
    }

    return false
}

const chequearVacio = dato => {
    const valor = document.getElementById(dato)

    if (valor.value == "") {

        valor.classList.add("is-invalid")
        const invalid = document.getElementById(dato + "-inv")
        invalid.innerHTML = 'El campo no puede estar vacío'
        return 1
    }

    valor.classList.add("is-valid")
    return 0
}

const chequearNumero = dato => {
    const valor = document.getElementById(dato)

    if (esDigito(valor.value) || valor.value == "") {

        valor.classList.add("is-invalid")
        const invalid = document.getElementById(dato + "-inv")
        invalid.innerHTML = 'El campo no puede estar vacío o ser numérico'
        return 1
    }

    valor.classList.add("is-valid")
    return 0
}

const chequearLetra = dato => {
    const valor = document.getElementById(dato)

    if (!esDigito(valor.value) || valor.value == "") {

        valor.classList.add("is-invalid")
        const invalid = document.getElementById(dato + "-inv")
        invalid.innerHTML = 'El campo no puede estar vacío o contener letras'
        return 1
    }
    valor.classList.add("is-valid")
    return 0

}

const validarMail = dato => {

    const expReg = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
    const valor = document.getElementById(dato)
    const esValido = expReg.test(valor.value)

    if (esValido) {
        valor.classList.add("is-valid")
        return 0
    }

    valor.classList.add("is-invalid")
    const invalid = document.getElementById(dato + "-inv")
    invalid.innerHTML = 'El mail no contiene el formato correcto'
    return 1
}