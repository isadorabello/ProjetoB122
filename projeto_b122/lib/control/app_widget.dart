import 'package:flutter/material.dart';
import 'package:projeto_b122/view/dige_page.dart';
import 'package:projeto_b122/view/endo_page.dart';
import 'package:projeto_b122/view/home_page.dart';

import 'app_control.dart';

// import 'home_page.dart'; // importando o HomePage()

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppControl.instance,
      builder: (context, child) {
        return MaterialApp(
          home: const HomePage(),
          theme: ThemeData(
            brightness: AppControl.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            primarySwatch: Colors.indigo,
          ),
          initialRoute: "/home",
          routes: {
            "/home": (context) => const HomePage(),
            "/endo": (context) => const Endocrino(),
            "/dige": (context) => const Digestorio()
          },
        );
      },
    );
  }
}
