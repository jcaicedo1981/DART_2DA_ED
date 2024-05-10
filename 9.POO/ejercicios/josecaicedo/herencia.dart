import 'dart:html';

import '../../code/3_herencia_extends.dart';

void main(){
final perro = Mascota(nombre: "Perrito", edad: 1.0, color: "blqnco");
print(perro.nombre);
perro.comer();


}

///Perro -> nombre, edad, color, alimentacion -> comer, ladrar
///Gato -> nombre, edad, color, alimentacion -> comer, maullar
///Hamster -> nombre, edad, color, alimentacion -> comer, correr
///
///

class Mascota {

  ///atributos
  final String nombre;
  final double edad;
  final String color;

    
  ///constructor
  ///
  Mascota({required this.nombre, required this.edad, required this.color}); 
  //Mascota(this.nombre, this.edad, this.color);


  /// metodos
  /// 
  void comer(){

    print("$nombre Esta cominedo");
  }

 
}


