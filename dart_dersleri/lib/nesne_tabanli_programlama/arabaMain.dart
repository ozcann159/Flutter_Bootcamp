import 'package:dart_dersleri/nesne_tabanli_programlama/araba.dart';

void main() {
  //nesne oluşturma
  var bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true);

  bmw.bilgiAl();

  bmw.renk = "Kırmızı";
  bmw.hiz = 0;
  bmw.calisiyorMu = false;

  bmw.calistir();
  bmw.bilgiAl();


  var sahin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false);

   sahin.renk = "Sarı";
  sahin.hiz = 20;
  sahin.calisiyorMu = true;

  sahin.bilgiAl();
}
