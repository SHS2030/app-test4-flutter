import 'package:flutter/material.dart';

class EndDrawerPerso extends StatefulWidget {
  const EndDrawerPerso({super.key});

  @override
  State<EndDrawerPerso> createState() => _EndDrawerPersoState();
}

class _EndDrawerPersoState extends State<EndDrawerPerso> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 130,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu'),
            ),
          ),
          ListTile(
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/page-accueil",
                (predicate) => false,
              );
            },
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Compteur'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/page-compteur",
                (predicate) => false,
              );
            },
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Settings'),
            onTap: null,
          ),
          SizedBox(height: 10),
          ListTile(
            tileColor: Theme.of(context).colorScheme.secondary,
            title: Text('Boutique'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                "/page-boutique",
                (predicate) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
