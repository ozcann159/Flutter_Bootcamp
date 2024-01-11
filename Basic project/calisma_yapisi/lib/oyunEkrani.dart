import 'package:calisma_yapisi/sonucEkrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  const OyunEkrani({Key? key}) : super(key: key);

  @override
  _OyunEkraniState createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => SonucEkrani()),
                    ),
                  );
                },
                child: Text("Bitti")),
          ],
        ),
      ),
    );
  }
}
