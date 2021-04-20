import 'package:addicts_movies/service/masVistas_servicio.dart';
import 'package:flutter/material.dart';
import 'package:addicts_movies/service/populares_servicio.dart';
import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:addicts_movies/classes/clase_Populares.dart';
import 'package:provider/provider.dart';

class Populares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Populares'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Consumer<PopularesProvider>(
              builder: (context, value, child) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.peliculas.length,
                itemBuilder: (context, index) => PeliculaWidget(
                  titleW: value.peliculas[index].title,
                  imageW: value.peliculas[index].image,
                  // descriptionW: value.peliculas[index].description,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
