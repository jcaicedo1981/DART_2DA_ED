
void main(){
saludar("Richar", (){print("Cualquier cosa");});

saludasArgumentos("Richar", (String nombre){
  print ("Hola $nombre");
});

}


///con argumeto
///


void saludar(String nombre, Function callback){

  print("Elnombre es: $nombre");
  callback.call();

  //caso fluter

  otraFuncion((saludo,suma){print("El saludo $saludo");
  print("suma es $suma");});

  //funcionVoid(() {print("hola");});
}


void saludasArgumentos(String nombre, Function funvtion){

  funvtion(nombre);
}

void otraFuncion(Function onSave){

  final saludo = "Hola mundo";
  final suma = 1+1;
  onSave(saludo,suma);
}

///una funcion void
///
//void funcionVoid(VoidCallback void1){
 // void1();
//}