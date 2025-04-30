import 'package:flutter/material.dart';

//! AnimatedCrossFade

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => PantallaNueveState();
}

class PantallaNueveState extends State<PantallaNueve> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcc21ff),
        centerTitle: true,
        title: const Text(
          'Pagina 10',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              child: const Text(
                'Switch',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          AnimatedCrossFade(
            firstChild: Image.network(
              'https://raw.githubusercontent.com/Emmanuel-Salcido-1097/P8MisImagenes6I/refs/heads/main/agua.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            secondChild: Image.network(
              'https://raw.githubusercontent.com/Emmanuel-Salcido-1097/P8MisImagenes6I/refs/heads/main/oceano.jpg',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
