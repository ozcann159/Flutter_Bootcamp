import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  _SayfaYState createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Sayfa Y"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ((route) => route.isFirst));
              },
              child: Text("Anasayfaya Git")),
        ));
  }
}
