// ignore_for_file: public_member_api_docs, sort_constructors_first
class Araba {
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba(
      {required this.renk,
      required this.hiz,
      required this.calisiyorMu}); //this araba class ını temsil eder.

  void calistir(){    //Side effect => Yan etki
    calisiyorMu = true;
    hiz= 5;
  }

  void durdur(){
    calisiyorMu =false;
    hiz = 0;
  }


  void hizlan(int kamKm){

  }


  void bilgiAl() {
    print("--------------------------------------------");
    print("Renk: ${renk}");
    print("Hız: ${hiz}");
    print("Çalışıyormu: ${calisiyorMu}");
  }
}
