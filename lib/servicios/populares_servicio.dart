import 'package:dio/dio.dart';
import 'package:addicts_movies/clases/clase_Populares.dart';

Future<List<C_Populares>> obtenerPopulares() async {
  try {
    var response = await Dio().get(
        'https://api.themoviedb.org/3/movie/popular?api_key=0e685fd77fb3d76874a3ac26e0db8a4b&language=en-US&page=1');

    final json = response.data['results'];
    var listadoPeliculas =
        json.map((peliculaJson) => C_Populares.fromJson(peliculaJson)).toList();

    return List<C_Populares>.from(listadoPeliculas);
  } catch (e) {
    return [];
  }
}
