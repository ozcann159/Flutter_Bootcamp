// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style:
              TextStyle(color: Colors.white, fontFamily: 'Lemon', fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                  color: anaRenk, fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("assets/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Chip(icerik: "Chesee"),
                Chip(icerik: "Sausage"),
                Chip(icerik: "Olive"),
                Chip(icerik: "Pepper")
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "20 min",
                  style: TextStyle(
                      color: yaziRenk2,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Delivery",
                  style: TextStyle(
                      color: anaRenk,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Meat lover, get ready to meet your pizza !",
                style: TextStyle(
                    color: yaziRenk2,
                    fontSize: 23,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              children: [
                Text(
                  "\$5.98",
                  style: TextStyle(
                      fontSize: 44,
                      color: anaRenk,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "ADD TO CARD",
                    style: TextStyle(color: yaziRenk1),
                  ),
                  style: TextButton.styleFrom(backgroundColor: anaRenk),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({
    Key? key,
    required this.icerik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
      ),
      onPressed: () {},
      child: Text(
        icerik,
        style: TextStyle(
          color: yaziRenk1,
        ),
      ),
    );
  }
}
