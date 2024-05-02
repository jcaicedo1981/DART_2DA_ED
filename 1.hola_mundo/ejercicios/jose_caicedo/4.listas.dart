import 'dart:js_interop';

void main ()
{
   ////lista.- un tipo de dato que guarda una lista de elemnetos

   /// [objeto1,objeto2,objeto3,obleto4]

   List<int> lista1 = [1,2,3,4,5,6];

   print (lista1);

   //// primer elemento

   print(lista1.first);

   /// uñitmo elemento

   print(lista1.last);

   //// acceder un el,emto en espoecifico

   print(lista1[2]);

   print(lista1[0]);

   ///operadores de manejo de listas

   //list.add(7);
   print (lista1);
   
   ///addall

   final lista3 = [10,11,12,13];
   lista1.addAll(lista3);
   print(lista1);
   print (lista3);

   //remove

   //final value1 = list.remove(6);
   //print(value1);

   //final value12 = list.remove(6);
   //print(value12);


}