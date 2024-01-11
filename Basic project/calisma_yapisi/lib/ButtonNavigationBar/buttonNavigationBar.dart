import 'package:calisma_yapisi/ButtonNavigationBar/sayfa1.dart';
import 'package:calisma_yapisi/ButtonNavigationBar/sayfa2.dart';
import 'package:calisma_yapisi/ButtonNavigationBar/sayfa3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({Key? key}) : super(key: key);

  @override
  _ButtonNavigationBarState createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int secilenIndex = 0;
  var Sayfalar = [const Sayfa1(), const Sayfa2(), const Sayfa3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonNavigationBar"),
      ),
      body: Sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one_outlined), label: "Bir"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined), label: "İki"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined), label: "Üç")
        ],
        currentIndex: secilenIndex,
        onTap: (indeks) {
          setState(() {
            secilenIndex = indeks;
          });
        },
      ),
    );
  }
}
