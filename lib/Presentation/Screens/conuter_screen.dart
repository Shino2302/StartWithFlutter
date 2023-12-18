import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contadorDeClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra superior de la pantalla:
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(
            child: Text(
              'Aplicación de contador',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contadorDeClicks',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            const Text('Clicks', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Propiedad del boton que activa un evento cada
        //que es precionado:
        onPressed: () {
          //Propiedad que nos permite actualizar la patalla en
          //tiempo de ejecucion
          setState(() {
            contadorDeClicks++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
