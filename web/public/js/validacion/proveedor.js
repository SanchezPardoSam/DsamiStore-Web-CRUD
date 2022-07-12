function validateFormCreate() {
  var newAlert = document.getElementById("alertCreate");
  const regionSelectEl = document.getElementById("agregar-idRegion");
  const provinciaSelectEl = document.getElementById("agregar-idProvincia");
  const distritoSelectEl = document.getElementById("agregar-idDistrito");
  const paisSelectEl = document.getElementById("agregar-idPais");
  const direccionSelectEl = document.getElementById("agregar-Direccion");
  const idEmpresaSelectEl = document.getElementById("agregar-idEmpresa");
  const idTipoDocumento = document.getElementById("agregar-idTipoDocumento");
  const numeroDocumento = document.getElementById("agregar-numDocumento");
  console.log(idTipoDocumento.value);

  function calculateAge(birthday) {
    const ageDifMs = Date.now() - new Date(birthday).getTime();
    const ageDate = new Date(ageDifMs);
    return Math.abs(ageDate.getUTCFullYear() - 1970);
  }
  const birth = document.createProveedor.crearFechaNac.value || "";
  const age = calculateAge(birth);
  if (age <= 18) {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una fecha de nacimineto correcta</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (document.createProveedor.crearNombre.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un nombre correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (document.createProveedor.crearApellidoPaterno.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un apellido paterno correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (document.createProveedor.crearApellidoMaterno.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una apellido materno correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (document.createProveedor.idTipoDocumento.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una tipo de documento correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (
    idTipoDocumento.value === "780644c0-eba6-11ec-a58c-e8d8d133e528" &&
    numeroDocumento.value.length !== 8
  ) {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un numero de documento correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }

  if (
    idTipoDocumento.value === "7807e3b4-eba6-11ec-a58c-e8d8d133e528" &&
    numeroDocumento.value.length !== 10
  ) {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un numero de documento correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }

  if (document.createProveedor.crearNumDocumento.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un número de documento correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }

  if (regionSelectEl.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una region correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (provinciaSelectEl.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una provincia correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (distritoSelectEl.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un distrito correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (paisSelectEl.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese un pais correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }

  if (direccionSelectEl.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una direccion correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  if (idEmpresaSelectEl.value.trim() === "") {
    newAlert.insertAdjacentHTML(
      "afterend",
      "<div class='alert alert-warning alert-dismissible fade show' role='alert'><small>Ingrese una empresa correcto</small><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"
    );
    return false;
  }
  document.createProveedor.submit(); // fire submit event
  return true;
}
