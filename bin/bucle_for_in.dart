main() {
  List<String> frutas = ["Manzana", "Pera", "Plátano", "Kiwi"];
  for (String fruta in frutas) {
    print(fruta);
    if (fruta == "Pera") {
      // break;   Sirve para forzar la salida del bucle aunque queden ciclos por ejecutarse
      continue; // Sirve para saltar al siguiente ciclo del bucle
    }
    print("Esto está después del continue");
  }
  print("Esto está fuera del bucle");

  Map<String, dynamic> persona = {
    "nombre": "Carlos",
    "edad": 42,
    "DNI": "12345678K"
  };
  print(persona['nombre']);

  for(var datos in persona.values){
    print(datos);
  }
}
