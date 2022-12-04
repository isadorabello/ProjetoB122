// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:projeto_b122/view/dige_page.dart';
import 'package:projeto_b122/view/endo_page.dart';

import '../control/custom_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String escolha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projeto B122 - Angélica Neves - 627"),
        actions: const [CustomSwitch()],
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text.rich(
                  TextSpan(
                    text:
                        'Atualmente, é comum que pessoas das mais variáveis idades tenham '
                        'algum tipo de problema de sáude, seja nas questões endócrinas ou digestórias.'
                        ' Mas você sabe quais as recomendações do que evitar caso possua um dos '
                        'dois? Se a resposta é não, chegou a hora de descobrir. Confere ai!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                onChanged: (text) {
                  escolha = text;
                  // print(text);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Endócrino ou Digestório',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (escolha.toLowerCase() == 'endócrino') {
                      // ignore: avoid_print
                      // print(escolha);
                      Navigator.of(context).pushNamed("/endo");
                    } else if (escolha.toLowerCase() == 'digestório') {
                      Navigator.of(context).pushNamed("/dige");
                    } else {
                      // configura o button
                      Widget okButton = FlatButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      );
                      // configura o  AlertDialog
                      AlertDialog alerta = AlertDialog(
                        title: const Text("Opa, algo errado..."),
                        content: const Text(
                            "Tenha certeza de digitar corretamente uma das duas opções! Evite espaçoes desnecessários e não se esqueça do acento!"),
                        actions: [
                          okButton,
                        ],
                      );
                      // exibe o dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alerta;
                        },
                      );
                    }
                  },
                  child: const Text('Procurar'))
            ],
          ),
        ),
      )),
    );
  }
}
