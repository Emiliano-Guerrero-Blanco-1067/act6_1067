import 'package:flutter/material.dart';
import 'package:act6_1067/pantalla_inicial.dart';
import 'package:act6_1067/pantalla_1.dart';
import 'package:act6_1067/pantalla_2.dart';
import 'package:act6_1067/pantalla_3.dart';
import 'package:act6_1067/pantalla_4.dart';
import 'package:act6_1067/pantalla_5.dart';
import 'package:act6_1067/pantalla_6.dart';
import 'package:act6_1067/pantalla_7.dart';
import 'package:act6_1067/pantalla_8.dart';
import 'package:act6_1067/pantalla_9.dart';
import 'package:act6_1067/pantalla_10.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rutas entre paginas",
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
      },
    );
  }
}
