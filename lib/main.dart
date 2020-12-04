import 'package:contador_de_pessoas/home/home_bindings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Contador de Pessoas com GetX',
    initialRoute: '/',
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    getPages: [
      GetPage(name: '/', page: () => HomePage(), binding: HomeBinding())
    ]
  ));
}