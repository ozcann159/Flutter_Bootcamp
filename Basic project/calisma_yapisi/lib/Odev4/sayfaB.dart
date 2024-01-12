import 'package:calisma_yapisi/Odev4/SayfaY.dart';
import 'package:flutter/material.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  _SayfaBState createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Sayfa B"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => SayfaY())));
            },
            child: Text("Sayfa Y' ye Git")),
      ),
    );
  }
}
