import 'dart:html';
import 'dart:ui';

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
                  Expanded(child: CustomMenu(imageAsset:"asset/persegi.jpg" , tittle:"Persegi")),
                  Expanded(child: CustomMenu(imageAsset:"asset/persegipanjang.jpg" , tittle:"Persegi Panjang")),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: CustomMenu(imageAsset:"asset/segitiga.jpg" , tittle:"Segitiga")),
                  Expanded(child: CustomMenu(imageAsset:"asset/trapesium.jpg" , tittle:"Trapesium")),
                ],
              ),
            )
          ],
        ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu

  ({
  super.key,
  required this.imageAsset,
  required this.tittle,
  });

  final String imageAsset;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(color: Colors.purpleAccent),

        child: Row(
          children: [
            Image.asset(imageAsset, height: 100),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(tittle),
            )
          ],
        ));
  }
}
