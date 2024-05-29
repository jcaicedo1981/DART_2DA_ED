import 'package:fcomponentes_app/screens/alerts_screen.dart';
import 'package:fcomponentes_app/screens/auxiliar_route_screen.dart';
import 'package:fcomponentes_app/screens/home_screen.dart';
import 'package:fcomponentes_app/screens/lists_view_screen.dart';
import 'package:fcomponentes_app/screens/photo_album_screen.dart';
import 'package:fcomponentes_app/screens/routing_screen.dart';
// ignore: unused_import
import 'package:fcomponentes_app/screens/card_screen.dart';

import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  // '/mi-route' : (context) => MyWidget(),
  // '/'
  HomeScreen.routeName: (context) => const HomeScreen(),
  // Otras pantallas
  // ...
  RoutingScreen.routeName: (context) => const RoutingScreen(),
  AuxiliarRouteScreen.routeName: (contex) => const AuxiliarRouteScreen(),
  ListViewScreen.routeName: (context) => const ListViewScreen(),
  AlertsScreen.routeName: (context) => const AlertsScreen(),
  CardScreen.routeName: (context) => const CardScreen(),
  PhotoAlbumScreen.routeName: (context) => const PhotoAlbumScreen(),
};
