import 'package:calisma_yapisi/Odev4/SayfaY.dart';
import 'package:flutter/material.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  _SayfaXState createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Sayfa X"),
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
