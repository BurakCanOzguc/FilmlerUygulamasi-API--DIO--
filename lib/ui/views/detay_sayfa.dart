import 'package:flutter/material.dart';
import 'package:filmler_uygulamasi/data/entity/filmler.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film;
  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.film.ad}"),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                "http://kasimadalan.pe.hu/filmler_yeni/resimler/${widget.film.resim}"),
            Text(
              "${widget.film.fiyat}₺",
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
