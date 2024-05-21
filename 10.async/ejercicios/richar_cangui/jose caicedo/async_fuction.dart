void main()
{

//saludar();
//print(await saludar());
}

////programacion asincrona
///async  - awit
///
//void saludar(){
//print ("hola mundo");

//}

//Future<void> saludar() async{
//print("hola mundo 2");

//}

Future<String> saludar() async{
//print("hola mundo 2");

return "hola mundo 2";

}

Future<void> finDEAnio() async{

for(int i=10;i>0;i--){

  print(i);
  await Future.delayed(Duration(seconds: 1));
}

print("feliz anio");

 }

 ///Future<String> nombreUsuario() Async{
  ///try {
    ///print("se ejecuta");
    
   ///   } catch (err) {
    ///print("Ocurrio un error");
      //return '';
     /// rethrow;
 /// }
  ///finally{
    ///print("siempre se jecuta");
 /// }

 ///}

 Future<String> getNombre() async{

  await Future.delayed(Duration(seconds: 2));
  throw Exception("Error .....");
  //return "Usuario patito";
 }

