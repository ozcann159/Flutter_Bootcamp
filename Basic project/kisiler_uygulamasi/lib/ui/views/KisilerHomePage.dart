import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/views/detaySayfa.dart';
import 'package:kisiler_uygulamasi/ui/views/kayitSayfa.dart';

class KisilerHomePage extends StatefulWidget {
  const KisilerHomePage({Key? key}) : super(key: key);

  @override
  _KisilerHomePageState createState() => _KisilerHomePageState();
}

class _KisilerHomePageState extends State<KisilerHomePage> {
  bool aramaYapiliryorMu = false;

  Future<void> ara(String aramaKelimesi) async {
    print("Kişi Ara : $aramaKelimesi");
  }

  Future<List<Kisiler>> kisileriYukle() async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Elif", kisi_tel: "11111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "Esra", kisi_tel: "22222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "Beyza", kisi_tel: "33333");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    return kisilerListesi;
  }

  Future<void> sil(int kisi_id) async {
    print("Kişi Sil: $kisi_id");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliryorMu
            ? TextField(
                decoration: const InputDecoration(hintText: "Ara"),
                onChanged: (aramaSonucu) {
                  ara(aramaSonucu);
                },
              )
            : const Text("Kişiler"),
        actions: [
          aramaYapiliryorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliryorMu = false;
                    });
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    aramaYapiliryorMu = true;
                  },
                  icon: const Icon(Icons.search))
        ],
      ),
      body: FutureBuilder<List<Kisiler>>(
        future: kisileriYukle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kisilerListesi = snapshot.data;
            return ListView.builder(
              itemCount: kisilerListesi!.length, //3
              itemBuilder: (context, indeks) {
                //0,1,2
                var kisi = kisilerListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetaySayfa(kisi: kisi)))
                        .then((value) {
                      print("Anasayfaya Dönüldü");
                    });
                  },
                  child: Card(
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kisi.kisi_ad,
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(kisi.kisi_tel),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text("${kisi.kisi_ad} silinsin mi?"),
                                  action: SnackBarAction(
                                      label: "Evet",
                                      onPressed: () {
                                        sil(kisi.kisi_id);
                                      }),
                                ));
                              },
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.black54,
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KayitSayfa()))
              .then((value) {
            print("Anasayfaya Dönüldü");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
