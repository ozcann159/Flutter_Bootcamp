import 'package:calisma_yapisi/oyunEkrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  Future<int> toplam(sayi1, sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç $sayac"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac = sayac + 1;
                  });
                },
                child: Text("Tıkla")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OyunEkrani()));
                },
                child: Text("Başla")),
            ElevatedButton(onPressed: () {}, child: Text("Durum")),
            FutureBuilder(future: toplam(10, 20), builder: (context, snapshot) {
              if(snapshot.hasError){
                return const Text("Hata oluştu");
              }
              if(snapshot.hasData){
                return  Text("Sonuç : ${snapshot.data}");
              }else{
                return Text("sonuç yok");
              }
            },)
          ],
        ),
      ),
    );
  }
}
