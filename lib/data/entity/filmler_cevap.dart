import 'package:filmler_uygulamasi/data/entity/filmler.dart';

class FilmlerCevap {
  List<Filmler> filmler;
  int success;

  FilmlerCevap({required this.filmler, required this.success});

  factory FilmlerCevap.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["filmler"] as List;
    var success = json["success"] as int;

    var filmler = jsonArray
        .map((jsonArrayNesnesi) => Filmler.fromJson(jsonArrayNesnesi))
        .toList();

    return FilmlerCevap(filmler: filmler, success: success);
  }
}
