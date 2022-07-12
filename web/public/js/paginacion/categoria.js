function cambiarCantidad(event) {
  const params = new URLSearchParams(window.location.search);
  params.set("cantidad", event.value);
  window.location.search = params.toString();
}
