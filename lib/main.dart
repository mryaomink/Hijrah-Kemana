import 'package:flutter/material.dart';
import 'package:hijrah_tour/screens/wisata_details.dart';
import 'package:hijrah_tour/screens/yao_explore.dart';
import 'package:hijrah_tour/screens/yao_home.dart';
import 'package:hijrah_tour/screens/yao_tentang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hijrah Kemana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => YaominkHome(),
        '/places': (context) => YaoExplore(),
        '/paket': (context) => WisataDetails(),
        '/tentang': (context) => YaoTentang(),
      },
    );
  }
}
