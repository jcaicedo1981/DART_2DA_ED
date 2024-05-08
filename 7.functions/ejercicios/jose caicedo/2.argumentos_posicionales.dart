

void main(){

 saludo("Richar");
 print ("$saludo");

///Argumentos posicionales
/////como maximo 2 variables - argumentos
variosArgumentos("richar", 12, true);

///llamada al arguemnto nulo
argumentoNUlo(null);

}

void saludo (String saludo){

  print ("hOLA $saludo");
}


///Como puedo pasar nulo
//

void variosArgumentos(String nombre, double edad, bool esSoltero){

print("El nombre es: $nombre");
print ("La edad es: $edad");
print ("Es Soltero: $esSoltero");

}

void argumentoNUlo(String? nombre){
  print(nombre);
}