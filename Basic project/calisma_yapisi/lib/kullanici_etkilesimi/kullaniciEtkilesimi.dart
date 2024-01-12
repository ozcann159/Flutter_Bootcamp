import 'package:flutter/material.dart';

class KullaniciEtkilesimi extends StatefulWidget {
  const KullaniciEtkilesimi({Key? key}) : super(key: key);

  @override
  _KullaniciEtkilesimiState createState() => _KullaniciEtkilesimiState();
}

class _KullaniciEtkilesimiState extends State<KullaniciEtkilesimi> {
  var tfControl = TextEditingController();
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
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Silmek istiyor musunuz ?"),
                    action: SnackBarAction(
                        label: "Evet",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: const Text("Silindi")),
                          );
                        }),
                  ));
                },
                child: Text("SnackBar"),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.white,
                      content: const Text(
                        "Silmek istiyor musunuz?",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      action: SnackBarAction(
                          label: "Evet",
                          textColor: Colors.red,
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Silindi",
                                  style: TextStyle(color: Colors.red),
                                ),
                                backgroundColor: Colors.white,
                              ),
                            );
                          }),
                    ),
                  );
                },
                child: Text("SnackBar (Özel)"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Başlık"),
                          content: const Text("İçerik"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("İptal")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Tamam"))
                          ],
                        );
                      });
                },
                child: Text("Alert"),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Kayıt İşlemi"),
                          content: TextField(
                            controller: tfControl,
                            decoration: const InputDecoration(hintText: "Veri"),
                          ),
                          backgroundColor: Colors.grey,
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "İptal",
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  print("Alınan veri : ${tfControl.text}");
                                  Navigator.pop(context);
                                },
                                child: const Text("Kaydet",
                                    style: TextStyle(color: Colors.black)))
                          ],
                        );
                      });
                },
                child: Text("Alert(Özel)"),
              ),
            ],
          ),
        ));
  }
}
