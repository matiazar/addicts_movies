import 'package:dio/dio.dart';
import 'package:addicts_movies/classes/clase_Populares.dart';
import 'package:flutter/cupertino.dart';

class PopularesProvider extends ChangeNotifier {
  List<C_Populares> _peliculas = [];

  List<C_Populares> get peliculas => _peliculas;
  void setPeliculas(List<C_Populares> peliculas) {
    _peliculas = peliculas;
    notifyListeners();
  }

  PopularesProvider() {
    obtenerPopulares();
  }

  Future<List<C_Populares>> obtenerPopulares() async {
    try {
      var response = await Dio().get(
          'https://api.themoviedb.org/3/movie/popular?api_key=0e685fd77fb3d76874a3ac26e0db8a4b&language=en-US&page=1');

      final json = response.data['results'];
      var listadoPeliculas = json
          .map((peliculaJson) => C_Populares.fromJson(peliculaJson))
          .toList();

      var listPeliculas = List<C_Populares>.from(listadoPeliculas);
      setPeliculas(listPeliculas);
      return listPeliculas;
    } catch (e) {
      return [];
    }
  }
}
