import 'package:flutter/material.dart';
import 'package:hello_word_flutter/Presentation/Screens/conuter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //Propiedad para quitar la etiqueta de debug
        debugShowCheckedModeBanner: false,
        //Propiedad para escojer un tema de estilos en nuestra app,
        //Estos pueden ser personalizados o ya definidos
        theme: ThemeData(
            useMaterial3: true,
            //propiedad para asignar una paleta de colores:
            colorSchemeSeed: Colors.deepPurple),
        home: const CounterScreen());
  }
}
