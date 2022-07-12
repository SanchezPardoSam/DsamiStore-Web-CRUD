function validateFormCreate() {
  var newAlert = document.getElementById("alertCreate");
  if (document.crearCategoria.crearNombre.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un nombre correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (document.crearCategoria.crearDescripcion.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una descripción correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  document.crearCategoria.submit();
  return true;
}

function validateFormEdit(event) {
  document.crearCategoria.submit();
}
