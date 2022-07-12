function validateFormCreate() {
  const newAlert = document.getElementById("createAlert");
  const nombre = document.getElementById("agregar-nombre-usuario-input");
  const clave = document.getElementById("agregar-clave-input");
  const rol = document.getElementById("agregar-codigo-rol-select");
  const codigoEmpleado = document.getElementById(
    "agregar-codigo-empleado-select"
  );

  if (nombre.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un nombre correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (clave.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una clave correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (rol.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un rol correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (codigoEmpleado.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un codigo empleado correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  document.crearUsuario.submit();
  return true;
}
