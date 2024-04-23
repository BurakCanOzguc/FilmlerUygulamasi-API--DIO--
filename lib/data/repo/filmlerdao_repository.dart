import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:filmler_uygulamasi/data/entity/filmler.dart';
import 'package:filmler_uygulamasi/data/entity/filmler_cevap.dart';

class FilmlerDaoRepository {
  List<Filmler> parseFilmler(String cevap) {
    return FilmlerCevap.fromJson(json.decode(cevap)).filmler;
  }

  Future<List<Filmler>> filmleriYukle() async {
    var url = "http://kasimadalan.pe.hu/filmler_yeni/tum_filmler.php";
    var cevap = await Dio().get(url);
    return parseFilmler(cevap.data.toString());
  }
}
