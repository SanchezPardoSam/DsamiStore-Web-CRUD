function validateRol() {
  var createRolContainer = document.getElementById("createRolContainer");
  if (document.createRol.nombre.value.trim() === "") {
    console.log("entro");
    createRolContainer.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una rol correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  document.createRol.submit();
  return true;
}
