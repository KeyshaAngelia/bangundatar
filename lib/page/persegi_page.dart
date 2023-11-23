import 'dart:html';

import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persegi', style: TextStyle(color: Colors.purpleAccent),),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "asset/persegi.jpg",
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi",
                style: TextStyle(
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              width: 10000,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Text(
                "Persegi adalah kasus khusus dari belah ketupat (sisi sama, berlawanan sudut sama), layang - layang (dua pasang sisi sama berbatasan), trapesium (sepasang sisi yang berlawanan sejajar), jajaran genjang (semua sisi berlawanan sejajar), sebuah segiempat atau tetragon (poligon empat sisi), dan persegi panjang (sisi berlawanan sama, sudut kanan) dan karenanya memiliki semua sifat dari semua bentuk ini, yaitu: Diagonal - diagonal persegi membagi dua satu sama lain dan bertemu pada 90 °, Diagonal persegi membagi dua sudutnya, Sisi-sisi yang berlawanan dari bujur sangkar keduanya paralel dan panjangnya sama, Keempat sudut persegi sama. (Masing-masing 360 ° / 4 = 90 °, jadi setiap sudut kotak adalah sudut kanan), Keempat sisi persegi sama. Diagonal persegi sama, Kotak adalah kasus n = 2 dari keluarga n- hypercubes dan n- orthoplexes, Kotak memiliki simbol Schläfli {4}. Kotak terpotong, t {4}, adalah segi delapan, {8}. Kotak berganti - ganti, h {4}, adalah digon, {2}.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: TextFormField(
                          onChanged: (value) {
                            _persegiController.sisi = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Sisi",
                            hintText: "Masukkan Sisi",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {
                          _persegiController.hitungKeliling();
                        }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          onPrimary: Colors.white,
                        ),),
                        SizedBox(width: 15),
                        ElevatedButton(onPressed: () {
                          _persegiController.hitungLuas();
                        }, child: Text("Hitung Luas"), style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          onPrimary: Colors.white,
                        )),
                      ],
                    )),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                width: 10000000,
                height: 200,
                child: Column(
                  children: [
                    Text("Hasil :", style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                    Obx(() => Text(_persegiController.hasil.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),)),
                    Obx(() => Text(_persegiController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}