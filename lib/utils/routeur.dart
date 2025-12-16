import 'package:app_test3/pages/page_accueil.dart';
import 'package:app_test3/pages/page_boutique.dart';
import 'package:app_test3/pages/page_compteur.dart';
import 'package:app_test3/pages/page_profil_detail.dart';
import 'package:flutter/material.dart';

abstract class Routeur {
  static const String routeInitial = '/page-compteur';
  static final Map<String, WidgetBuilder> routes = {
    "/page-accueil": (context) => PageAccueil(),
    "/page-compteur": (context) => PageCompteur(),
    "/page-profil-detail": (context) => PageProfilDetail(),
    "/page-boutique": (context) => PageBoutique(),
  };
}