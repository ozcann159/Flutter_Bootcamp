import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({ Key? key }) : super(key: key);

  @override
  _Sayfa2State createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sayfa 2",
        style: TextStyle(fontSize: 30, color: Colors.grey),
      ),
    );
  }
}