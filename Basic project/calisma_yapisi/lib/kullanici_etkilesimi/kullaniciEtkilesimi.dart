import 'package:flutter/material.dart';

class KullaniciEtkilesimi extends StatefulWidget {
  const KullaniciEtkilesimi({Key? key}) : super(key: key);

  @override
  _KullaniciEtkilesimiState createState() => _KullaniciEtkilesimiState();
}

class _KullaniciEtkilesimiState extends State<KullaniciEtkilesimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kullanıcı Etkilesimi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("SnackBar"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("SnackBar (Özel)"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Alert"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Alert(Özel)"),
              ),
            ],
          ),
        ));
  }
}
