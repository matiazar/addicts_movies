import 'package:dio/dio.dart';
import 'package:addicts_movies/classes/clase_MasVistas.dart';

Future<List<C_MasVistas>> obtenerMasVistas() async {
  try {
    var response = await Dio().get(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=0e685fd77fb3d76874a3ac26e0db8a4b&language=en-US&page=1');

    final json = response.data['results'];
    var listadoPeliculas =
        json.map((peliculaJson) => C_MasVistas.fromJson(peliculaJson)).toList();

    return List<C_MasVistas>.from(listadoPeliculas);
  } catch (e) {
    return [];
  }
}
