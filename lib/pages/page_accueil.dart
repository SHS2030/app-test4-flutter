import 'dart:convert';

import 'package:app_test3/components/end_drawer_perso.dart';
import 'package:app_test3/services/api_services.dart';
import 'package:flutter/material.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  List<Map<String, dynamic>>? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiServices apiServices = ApiServices();
    apiServices.getData("https://jsonplaceholder.typicode.com/users").then((
      valeue,
    ) {
      setState(() {
        data = List<Map<String, dynamic>>.from(valeue);
        print(jsonEncode(data));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: EndDrawerPerso(),
      appBar: AppBar(
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text("Accueil"),
      ),
      body: Center(
        child: SafeArea(
          child: ListView.separated(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "/page-profil-detail",
                    arguments: {
                      "id": data![index]["id"],
                      "name": data![index]["name"],
                      "email": data![index]["email"],
                      "imageurl":
                          "https://i.pravatar.cc/150?u=${data![index]["id"]}",
                    },
                  );
                },
                leading: Hero(
                  tag: "${data![index]["id"]}",
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://i.pravatar.cc/150?u=${data![index]["id"]}",
                    ),
                  ),
                ),
                title: Text(data![index]["name"].toString()),
                subtitle: Text(data![index]["email"].toString()),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Theme.of(context).primaryColor,
                thickness: 2,
                height: 2,
              );
            },
          ),
        ),
      ),
    );
  }
}
