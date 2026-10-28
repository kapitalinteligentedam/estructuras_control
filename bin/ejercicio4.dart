/* 
Crea un programa que muestre tres productos 
con su precio al usuario. El usuario debe 
poder elegir cuál quiere y qué cantidad. 
El programa debe aplicar un descuento del 10% 
si el usuario elige 10 o más unidades y mostrar 
el coste total al final.
*/

import 'dart:io';

main() {
  int? opcionElegida;
  int contador = 1;
  int? cantidad;
  double? total = 0;
  const int LIMITE_DESCUENTO = 10;
  const double PORCENTAJE_DESCUENTO = 10;
  double descuento = (100-PORCENTAJE_DESCUENTO)/100;

  List<Map<String, dynamic>> productos = [
    {"nombre": "Zapatillas", "precio": 50.0},
    {"nombre": "Camiseta", "precio": 40.0},
    {"nombre": "Pantalón", "precio": 75.0},
    {"nombre": "Gorra", "precio": 25.0},
  ];
  do {
    stdout.writeln("Escoge uno de estos productos:");
    for (Map<String, dynamic> producto in productos) {
      stdout.writeln(
        "$contador - ${producto['nombre']} - ${producto['precio']}€",
      );
      contador++;
    }
    contador = 1;
    String respuestaProducto = stdin.readLineSync() ?? "e";
    opcionElegida = int.tryParse(respuestaProducto);
    if(opcionElegida == null ||
      opcionElegida < 1 ||
      opcionElegida > productos.length){
        stdout.writeln("Has introducido una opción errónea.");
      }
  } while (opcionElegida == null ||
      opcionElegida < 1 ||
      opcionElegida > productos.length);

  do{
    stdout.writeln("Indica la cantidad que quieres comprar");
    String respuestaCantidad = stdin.readLineSync() ?? "e";
    cantidad = int.tryParse(respuestaCantidad);
    if(cantidad == null || cantidad < 1){
      stdout.writeln("No has introducido una cantidad válida.");
    }
  } while(cantidad == null || cantidad < 1);
  
  double precio = productos[opcionElegida-1]['precio'];
  String nombre = productos[opcionElegida-1]['nombre'];
  stdout.writeln("""Has pedido $cantidad del producto $nombre, 
  con un precio de $precio€""");
  if(cantidad >= LIMITE_DESCUENTO){
    stdout.writeln("Por pedir al menos $LIMITE_DESCUENTO unidades, tienes un descuento del $PORCENTAJE_DESCUENTO %.");
    total = cantidad * precio * descuento;
  } else {
    total = cantidad * precio;
  }
  stdout.writeln("El total es $total€");
  
}
