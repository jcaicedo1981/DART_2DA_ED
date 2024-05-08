
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

  funcionDatos((p0) => "hola1111111");
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

///Tipos de datos que vamos a retornar
/// String -> es
void funcionDatos(String Function(int) funcion){
  
  final valor = funcion.call(1);
  print(valor);
}