import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:flutter/material.dart';
import 'package:addicts_movies/service/masVistas_servicio.dart';
import 'package:provider/provider.dart';

class MasVistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Populares'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        //provider
        child: Consumer<MasVistasProvider>(
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
    );
  }
}
