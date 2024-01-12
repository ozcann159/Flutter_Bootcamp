import 'package:calisma_yapisi/ButtonNavigationBar/sayfa1.dart';
import 'package:calisma_yapisi/Odev4/sayfaA.dart';
import 'package:calisma_yapisi/Odev4/sayfaX.dart';
import 'package:flutter/material.dart';

class Anasayfa1 extends StatefulWidget {
  const Anasayfa1({Key? key}) : super(key: key);

  @override
  _Anasayfa1State createState() => _Anasayfa1State();
}

class _Anasayfa1State extends State<Anasayfa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Anasayfa 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => SayfaA())));
                },
                icon: const Icon(Icons.ad_units),
                label: const Text("Sayfa A'ya Git")),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => SayfaX())));
                },
                icon: const Icon(Icons.ad_units_outlined),
                label: const Text("X sayfasına git")),
          ],
        ),
      ),
    );
  }
}
