import 'package:flutter/material.dart';

class Digestorio extends StatelessWidget {
  const Digestorio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Digestório"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Center(
            child: Text.rich(
          TextSpan(
            text:
                'COLOQUE O TEXTO AQUI SOBRE O QUE EVITAR CASO TENHA PROBLEMAS DIGESTÓRIO!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          textAlign: TextAlign.center,
        )),
        const SizedBox(
          height: 15.0,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Retornar'),
        ),
      ]),
    );
  }
}
