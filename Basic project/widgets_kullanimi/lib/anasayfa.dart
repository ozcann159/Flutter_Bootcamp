import 'dart:math';

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mutlu.png";
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  int radioDeger = 0;
  bool progressBar = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("Fransa");
    ulkelerListesi.add("Japonya");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              TextField(
                controller: tfController,
                decoration: const InputDecoration(
                  hintText: "Veri",
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      alinanVeri = tfController
                          .text; //Alınan veriye tfController.text i aktarıyoruz
                    });
                  },
                  child: const Text("Veriyi Al")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resimAdi = "mutlu.png";
                        });
                      },
                      child: const Text("Resim 1")),
                  Image.asset("resimler/$resimAdi"),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          resimAdi = "uzgun.png";
                        });
                      },
                      child: const Text("Resim 2")),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 180,
                  child: SwitchListTile(
                      title: Text("Dart"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: switchKontrol,
                      onChanged: (veri) {
                        setState(() {
                          switchKontrol = veri;
                        });
                      }),
                ),
                SizedBox(
                  width: 180,
                  child: CheckboxListTile(
                      title: Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxKontrol,
                      onChanged: (veri) {
                        setState(() {
                          checkboxKontrol = veri!;
                        });
                      }),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 180,
                  child: RadioListTile(
                      title: Text("Barcelona"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: 1,
                      groupValue: radioDeger,
                      onChanged: (veri) {
                        setState(() {
                          radioDeger = veri!;
                        });
                      }),
                ),
                SizedBox(
                  width: 180,
                  child: RadioListTile(
                      title: Text("Real Madrid"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (veri) {
                        setState(() {
                          radioDeger = veri!;
                        });
                      }),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      progressBar = true;
                    },
                    child: const Text("Başla"),
                  ),
                  Visibility(
                      visible: progressBar,
                      child: const CircularProgressIndicator()),
                  ElevatedButton(
                      onPressed: () {
                        progressBar = false;
                      },
                      child: Text("Dur")),
                ],
              ),
              Text(ilerleme.toString()),
              Slider(
                  min: 30.0,
                  max: 100,
                  value: ilerleme,
                  onChanged: (veri) {
                    setState(() {
                      ilerleme = veri;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfSaat,
                      decoration: InputDecoration(hintText: "Saat"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(
                              DateTime.now(),
                            )).then((value) {
                          tfSaat.text = "${value!.hour}: ${value!.minute}";
                        });
                      },
                      icon: Icon(Icons.access_time)),
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfTarih,
                      decoration: InputDecoration(hintText: "Tarih"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2030))
                            .then((value) {
                          tfTarih.text =
                              "${value!.day} / ${value!.month} / ${value!.year}";
                        });
                      },
                      icon: Icon(Icons.date_range))
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  icon: Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map((ulke) {
                    return DropdownMenuItem(
                      value: ulke,
                      child: Text(ulke),
                    );
                  }).toList(),
                  onChanged: (veri) {
                    setState(() {
                      secilenUlke = veri!;
                    });
                  }),
              GestureDetector(
                onTap: () {
                  print("Tek tıklandı");
                },
                onDoubleTap: () {
                  print("Çift tıklandı");
                },
                onLongPress: () {
                  print("Uzun tıklandı");
                },
                child: Container(
                  width: 200,
                  height: 150,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    print("Switch Durum: ${switchKontrol}");
                    print("Checkbox Durum: ${checkboxKontrol}");
                    print("RadioButton ${radioDeger}");
                    print("Ülke durum ${secilenUlke}");
                  },
                  child: Text("Göster")),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularProgressInducator {}
