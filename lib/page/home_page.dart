import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:bangun_datar_kelas_c/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_c/page/persegi_page.dart';
import 'package:bangun_datar_kelas_c/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_c/page/segitiga.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFCF8F8)),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersegiPage()));
                        },
                        child: CustomMenu(
                            imageAsset: "asset/persegi.jpg",
                            tittle: "Persegi"))),
                Expanded(
                  child: InkWell(onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersegiPanjangPage()));
                  },
                    child:CustomMenu(
                        imageAsset: "asset/persegipanjang.jpg",
                        tittle: "Persegi Panjang")
                  ),
                )
              ],

            ),
    ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SegitigaPage()));
                        },
                        child: CustomMenu(
                            imageAsset: "asset/segitiga.jpg",
                            tittle: "Segitiga"))),
                Expanded(
                  child: InkWell(onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LingkaranPage()));
                  },
                    child:CustomMenu(
                        imageAsset: "asset/lingkaran.jpeg",
                        tittle: "Lingkaran")
                  ),
                )
              ],

            ),
    ),
    ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.tittle,
  });

  final String imageAsset;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: 100,
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                tittle,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
