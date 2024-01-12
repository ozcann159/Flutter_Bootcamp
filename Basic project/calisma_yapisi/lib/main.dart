import 'package:calisma_yapisi/ButtonNavigationBar/buttonNavigationBar.dart';
import 'package:calisma_yapisi/Odev4/anasayfa1.dart';
import 'package:calisma_yapisi/anasayfa.dart';
import 'package:calisma_yapisi/kullanici_etkilesimi/kullaniciEtkilesimi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Anasayfa1());
  }
}
