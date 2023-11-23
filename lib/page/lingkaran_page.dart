import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/lingkaran_controller.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});

  final LingkaranController _lingkaranController = Get.put( LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "Lingkaran Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/lingkaran.jpeg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lingkaran",
                // style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent, //Border.all
                  borderRadius: BorderRadius.circular(10), //BorderRadius.all),
                ),
                child: Text(
                  "Lingkaran adalah bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang.",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                )),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: TextFormField(
                          onChanged: (value) {
                            _lingkaranController.jari = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Jari-Jari",
                            hintText: "Masukkan Jari-Jari",
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
                    Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: () {
                              _lingkaranController.hitungKeliling();
                            }, child: Text("Hitung Keliling"), style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurpleAccent,
                              onPrimary: Colors.white,
                            ),),
                            SizedBox(width: 16),
                            ElevatedButton(onPressed: () {
                              _lingkaranController.hitungLuas();
                            },  child: Text("Hitung Luas"), style: ElevatedButton.styleFrom(
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
                    Obx(() => Text(_lingkaranController.angka.value, textAlign: TextAlign.center, style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),)),
                    Obx(() => Text(_lingkaranController.hasil.value, textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16)))
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}