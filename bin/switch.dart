main() {
  String tipoMascota = "perro";

  switch (tipoMascota) {
    case "perro":
      print("Tu mascota es un perro");
      break;
    case "gato":
      print("Tu mascota es un gato");
      break;
    case "pájaro":
      print("Tu mascota es un pájaro");
      break;
    default:
      print("No sé qué mascota tienes");
      break;
  }
}
