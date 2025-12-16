import 'package:app_test3/utils/routeur.dart';
import 'package:app_test3/utils/theme_perso.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemePerso.modeClair,
      darkTheme: ThemePerso.modeSombre,
      routes: Routeur.routes,
      initialRoute: Routeur.routeInitial,
    );
  }
}
