
void main(){

//print(Perro("rojo", "juamn", "10"));

final perroObjeto = Animal(nombre:"Perrito", edad: 18, color: "rojo");

print(perroObjeto.edad);


}

/// clases
/// class <NOmbre de la clase>{}
/// 
/// Perro->nombre,edad, color
/// Gatto->nombre,edad, color
/// Ave->nombre,edad, color
class Animal{

final String nombre;
final int edad;
final String color;

Animal({
  required String this.nombre,
  required int this.edad,
  required String this.color,
});

}