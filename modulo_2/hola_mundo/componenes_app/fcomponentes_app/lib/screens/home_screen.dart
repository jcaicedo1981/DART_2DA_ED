import 'package:fcomponentes_app/screens/alerts_screen.dart';
import 'package:fcomponentes_app/screens/form_screen.dart';
import 'package:fcomponentes_app/screens/infinity_scroll_screen.dart';
import 'package:fcomponentes_app/screens/lists_screen.dart';
import 'package:fcomponentes_app/screens/lists_view_screen.dart';
import 'package:fcomponentes_app/screens/photo_album_screen.dart';
import 'package:flutter/material.dart';

import 'routing_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //Declarando nombres de rutas
  // static const TipoDeDato(String) routeName = '/nombre-ruta';
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Componentes",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 67, 98),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.alt_route_sharp),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Enrutamiento",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Hola Mundo");
                // Navigator
                Navigator.pushNamed(context, RoutingScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Listas - Single Child Scroll View",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Bienvenido a las listas");
                // Navigator
                Navigator.pushNamed(context, ListsScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Listas - ListView",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Bienvenido a las listas");
                // Navigator
                Navigator.pushNamed(context, ListViewScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_alert_rounded),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Alertas",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Bienvenido a las Alertas");
                // Navigator
                Navigator.pushNamed(context, AlertsScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.all_inclusive_rounded),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Infinity Scroll - Scroll infinito",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Bienvenido al Infinity Scroll");
                // Navigator
                Navigator.pushNamed(context, InfinityScroll.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_align_center),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Formularios",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Bienvenido a los Formularios");
                // Navigator
                Navigator.pushNamed(context, FormScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_align_center),
              iconColor: const Color.fromARGB(255, 0, 183, 255),
              title: const Text(
                "Albun de Fotos",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 62, 84),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: Color.fromARGB(255, 0, 183, 255),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              //autofocus: true,
              //focusColor: const Color.fromARGB(255, 255, 0, 0),
              splashColor: const Color.fromARGB(108, 0, 35, 19),
              onTap: () {
                print("Bienvenido a los Albun de fotos");
                // Navigator
                Navigator.pushNamed(context, PhotoAlbumScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
