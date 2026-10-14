main(){
  int numeroElegido = 30;
  int numeroDePares = 0;
  int numeroDeImpares = 0;
  for(int i = 1; i < numeroElegido; i++){
    if(i % 2 == 0){
      numeroDePares++;
    } else {
      numeroDeImpares++;
    }
  }

  print("Había $numeroDePares números pares y $numeroDeImpares número impares");
}