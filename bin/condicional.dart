/* Haz un programa que le pida la nota del examen al usuario
 y le responda si ha suspendido, ha sacado un suficiente,
 un bien, un notable o un sobresaliente */

 import 'dart:io';

void main(){
    stdout.writeln("Intriduce tu nota del examen");
    String respuesta = stdin.readLineSync() ?? "e";
    double nota = double.tryParse(respuesta) ?? -1;
    if(nota < 0){
        stdout.writeln("No has introducido una nota válida");
    } else if(nota < 5){
        stdout.writeln("Has suspendido");
    } else if(nota < 6){
        stdout.writeln("Has sacado un suficiente");
    } else if(nota < 7){
        stdout.writeln("Has sacado un bien");
    } else if(nota < 9){
        stdout.writeln("Has sacado un notable");
    } else {
        stdout.writeln("Has sacado un sobresaliente");
    }
 }