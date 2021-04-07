import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:flutter/material.dart';
import 'package:addicts_movies/classes/clase_MasVistas.dart';
import 'package:addicts_movies/service/masVistas_servicio.dart';

class MasVistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: FutureBuilder<List<C_MasVistas>>(
        future: obtenerMasVistas(),
        builder: (context, snapshot) => snapshot.data == null
            ? snapshot.hasError
                ? Center(child: Text('Error'))
                : Center(
                    child: CircularProgressIndicator(),
                  )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemBuilder: (context, index) => PeliculaWidget(
                    titleW: snapshot.data[index].title,
                    imageW: snapshot.data[index].image,
                  ),
                  itemCount: snapshot.data.length,
                ),
              ),
      ),
    );
  }
}
