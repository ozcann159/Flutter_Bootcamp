import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/ui/views/detaySayfa.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({Key? key}) : super(key: key);

  @override
  _KayitSayfaState createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    print("Kişi Kaydet: $kisi_ad, $kisi_tel");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kayıt Sayfası"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfKisiAdi,
                decoration: const InputDecoration(hintText: 'Kisi Ad'),
              ),
              TextField(
                controller: tfKisiTel,
                decoration: const InputDecoration(hintText: 'Kisi Tel'),
                
              ),
              ElevatedButton(
                onPressed: () {
                  kaydet(tfKisiAdi.text, tfKisiTel.text);
                },
                child: Text("Kaydet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
