import 'dart:io';

main() {
  int? edad;
  int numeroIntentos = 0;
  do {
    stdout.writeln("Introduce tu edad");
    String respuesta = stdin.readLineSync() ?? "e";
    edad = int.tryParse(respuesta);
    if (edad == null || edad < 0 || edad > 100) {
      stdout.writeln(
        "Has introducido un valor incorrecto. Debes introducir un entero",
      );
      numeroIntentos++;
    }
    if (numeroIntentos == 5) {
      stdout.writeln("Has introducido un valor incorrecto demasiadas veces");
      break;
    }
  } while (edad == null || edad < 0 || edad > 100);
  
  if (numeroIntentos < 5) {
    stdout.writeln("Perfecto, tu edad es $edad años");
  } 
}
