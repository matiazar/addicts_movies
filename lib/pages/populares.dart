import 'package:flutter/material.dart';
import 'package:addicts_movies/service/populares_servicio.dart';
import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:addicts_movies/classes/clase_Populares.dart';

class Populares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Populares'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FutureBuilder<List<C_Populares>>(
          future: obtenerPopulares(),
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
                      descriptionW: snapshot.data[index].description,
                    ),
                    itemCount: snapshot.data.length,
                  ),
                ),
        ),
      ),
    );
  }
}
