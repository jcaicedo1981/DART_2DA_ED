import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

///El nombre de screen el mismo nombre de la clase
class PhotoAlbumScreen extends StatelessWidget {
  const PhotoAlbumScreen({super.key});

  static const String routeName = '/photo-album';

  final photoUrl =
      "https://th.bing.com/th/id/OIP.awAiMS1BCAQ2xS2lcdXGlwHaHH?w=213&h=205&c=7&r=0&o=5&pid=1.7";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Title del appbar e l titulo wigwt tipo texto
        title: Text("Album de Fotos"),
        //
        centerTitle: false,

        ///siempre van a estar a la derecha del appbar
        actions: const [
          //Widgwt es usada para generar la kimagen de perfil de un usuario
          ///Container tiene varias propiedades widget no sea constante
          ///Padding es optimo porque solo maneja las separaciones
          ///SizeBox es optimo por solo ocupa un espacio

          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              ///utilizar el child parar asignarle a un contenido
              radius: 50,

              ///utilizar el child parar asignarle a un contenido
              child: Text(
                "JC",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              ///voy acrear un avatar que renderiza una imagen remota
              ///
              CircleAvatar(
                ///forma1
                ///Recibe una imagen provoder
                ///networimagen un proveedor de imagen que nos permite tilizar
                ///scale permite manejar la esacla de la imagen pero en relacion al peso
                backgroundImage: NetworkImage(photoUrl),

                //radius esto permite el tamano del circulo
                radius: 50,

                ///forma 2
                ///crear widgets de imagenes -> Iamge
                ///Forzar el borde circula de un widgwt en general se utiliza (ClipRRect)
                child: ClipRRect(

                    ///widget para que se recorte en funcion de un radio
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(photoUrl)),
              ),

              /// un espacio que separa la imagen del otro widget

              const SizedBox(width: 16),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jose Caicedo Gavilanes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("Mis recuerdos"),
                ],
              )
            ],
          ),
          //grillas ->gridview
          ///SliverGridDelegateWithFixedCrossAxisCount crea una grilla emn base a un nuemro
          ///[]  [] []
          SizedBox(
              height: 500,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: const [
                  Text("1"),
                  Text("2"),
                  Text("3"),
                  Text("4"),
                  Text("5"),
                  Text("6"),
                ],

                ///GridView.count  sencillo de utilzar no
              ))
        ],
      ),
    );
  }
}
