import 'package:flutter/material.dart';

//! AbsorbPointer

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4), // Esquinas menos redondeadas
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcc21ff),
        centerTitle: true,
        title: const Text(
          'Pagina 4',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: buttonShape,
                    ),
                    onPressed: () {
                      debugPrint('Bottom button pressed');
                    },
                    child: const Text('Bottom Button'),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                  height: 200.0,
                  child: AbsorbPointer(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade200,
                        shape: buttonShape,
                      ),
                      onPressed: () {
                        debugPrint('Top button pressed');
                      },
                      child: null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: buttonShape,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
