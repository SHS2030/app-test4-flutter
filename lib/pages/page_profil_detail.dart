import 'package:app_test3/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageProfilDetail extends StatefulWidget {
  const PageProfilDetail({super.key});

  @override
  State<PageProfilDetail> createState() => _PageProfilDetailState();
}

class _PageProfilDetailState extends State<PageProfilDetail> {
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text("Page Profil Detail"),
      ),
      body: Center(
        child: SafeArea(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Hero(
                    tag: "${args["id"]}",
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage("${args["imageurl"]}"),
                    ),
                  ),
                ),
                Text("Nom : ${args["name"]}"),
                Text("Email : ${args["email"]}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
