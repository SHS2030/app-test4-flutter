import 'dart:math';

import 'package:app_test3/components/end_drawer_perso.dart';
import 'package:app_test3/services/api_services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PageBoutique extends StatefulWidget {
  const PageBoutique({super.key});

  @override
  State<PageBoutique> createState() => _PageBoutiqueState();
}

class _PageBoutiqueState extends State<PageBoutique> {
  List<Map<String, dynamic>> data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiServices apiServices = ApiServices();
    apiServices.getData("https://dummyjson.com/products").then((value) {
      setState(() {
        data = List<Map<String, dynamic>>.from(value["products"]);
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
        title: Text("Page Boutique"),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 12,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  // Générer une chaîne de caractère aléatoire avec une fonction dart à part Random
                  Image.network(
                    "https://dummyjson.com/products/images/1.jpg?u=${Random().nextInt(100)}",
                  ),
                  Image.network(
                    "https://i.pravatar.cc/150?u=${Random().nextInt(100)}",
                  ),
                  Image.network(
                    "https://i.pravatar.cc/150?u=${Random().nextInt(100)}",
                  ),
                  Image.network(
                    "https://i.pravatar.cc/150?u=${Random().nextInt(100)}",
                  ),
                  Image.network(
                    "https://i.pravatar.cc/150?u=${Random().nextInt(100)}",
                  ),
                  Image.network(
                    "https://i.pravatar.cc/150?u=${Random().nextInt(100)}",
                  ),
                  Image.network(
                    "https://i.pravatar.cc/150?u=${Random().nextInt(100)}",
                  ),
                ],
              ),
              Expanded(
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
                  child: ListView.separated(
                    itemBuilder: (context, index) => Card(
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                            child: Image.network(data[index]["thumbnail"])),
                          Text(data[index]["title"]),
                          Text(data[index]["price"].toString()),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 2,
                    ),
                    itemCount: data.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
