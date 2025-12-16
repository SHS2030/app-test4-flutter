import 'package:app_test3/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageCompteur extends StatefulWidget {
  const PageCompteur({super.key});

  @override
  State<PageCompteur> createState() => _PageCompteurState();
}

class _PageCompteurState extends State<PageCompteur> {
  int _compteur = 0;

  @override
  Widget build(BuildContext context) {
    print("Construction de la page compteur");

    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text("Page Compteur"),
      ),
      body: Center(
        child: SafeArea(
          bottom: true,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Compteur :",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "$_compteur",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(
          context,
        ).floatingActionButtonTheme.backgroundColor,
        foregroundColor: Theme.of(
          context,
        ).floatingActionButtonTheme.foregroundColor,
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _compteur++;
          });
          print("La nouvelle valeur du compteur est : $_compteur");
        },
      ),
    );
  }
}
