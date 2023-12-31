import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi adalah $hitung";
  }

  void hitungKeliling() {
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi adalah $hitung";
  }
}