import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  static String routeName = '/alerts';
  Widget adaptiveAction(
      {required BuildContext context,
      required VoidCallback onPressed,
      required Widget child}) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,

                  /// Propiedades ----
                  /// Cerrar la alerta al hacer click fuera de la alerta
                  /// true -> se cierra
                  /// false -> no se cierra se necesita un pop en un btn
                  barrierDismissible: false,

                  /// Color de afuera
                  // barrierColor: Colors.amber,

                  builder: (context) {
                    return AlertDialog(
                      // Title
                      title: const Text('Mi primera alerta'),
                      // Contenido interno de la alerta
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Esta es mi primera alerta, Esta es mi primera alerta, Esta es mi primera alerta, Esta es mi primera alerta"),
                          FlutterLogo(),
                        ],
                      ),

                      /// Boton de accion en la parte inferior
                      actions: [
                        FilledButton(onPressed: () {}, child: Text("Aceptar")),
                        OutlinedButton(
                          onPressed: () {
                            /// Forzar cerrar la alerta
                            Navigator.pop(context);
                          },
                          child: Text("Cancelar"),
                        ),
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.add, color: Colors.pink),
          ),
        ],
      ),
      body: Center(
          //Un boton tipo texto
          child: TextButton(
        //Accion que va a ejecutgar al presionar el botn
        onPressed: () {
          ///Metodo que crea una alerta
          showCupertinoDialog(

              ///como se identifica el wigget
              context: context,

              ///Consruir el contenido de la alaerta
              builder: (context) {
                //return const AlertDialog(
                //title: Text("HOla"),

                return const CupertinoAlertDialog(
                  title: Text("Mi cupertino Alerta"),
                  content:
                      Text("ESta es mi alerta en cupertino o de modelo 105"),
                  actions: [
                    //Esto es un voton material
                    ///TextButton(onPressed: () {}, child: const Text("Cancelar"))
                    ///Boton de accion que cumple la lia de cupertino
                    CupertinoDialogAction(
                      child: Text("Si Acepto"),
                      isDestructiveAction: true,
                      //onPressed: () {
                      // Navigator.pop(context);
                      // },
                    ),
                  ],
                );
              });
        },

        ///contenido del boton ->text
        child: const Text("Show cupeetine alert"),
      )),
    );
  }
}
