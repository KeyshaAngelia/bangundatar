import 'package:get/get.dart';

class  LingkaranController extends GetxController{

  int jari = 0;

  final hasil = "".obs;
  final angka = "".obs;


  void hitungLuas(){
    var hitung;
    if(jari % 7 == 0){
      hitung = (22 / 7) * jari * jari;
    }else{
      hitung = 3.14 * jari * jari;
    }
    hasil.value = "Hasil Perhitungan luas dari π *  $jari x $jari adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungKeliling(){
    var hitung;
    if(jari % 7 == 0){
      hitung = 2 * (22 / 7) * jari;
    }else{
      hitung = 2 * 3.14 * jari;
    }
    hasil.value = "Hasil Perhitungan keliling dari 2 x π x jari-jari $jari adalah $hitung";
    angka.value = "$hitung";
  }
}