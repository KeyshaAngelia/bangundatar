import 'package:get/get.dart';

class SegitigaController extends GetxController {
  double alas = 0;
  double tinggi = 0;
  double sisiKaki = 0;

  final hasil = "".obs;
  final angka = "".obs;

  void hitungLuas (){
    double hitung = 0.5 * alas * tinggi;
    hasil.value = "Hasil perhitungan luas dari alas $alas dan tinggi $tinggi adalah $hitung";
    angka.value = "$hitung";
  }
  void hitungKeliling (){
    double hitung = alas + 2 * sisiKaki;
    hasil.value = "Hasil perhitungan keliling dari alas $alas dan tinggi $tinggi adalah $hitung";
    angka.value = "$hitung";
  }
}