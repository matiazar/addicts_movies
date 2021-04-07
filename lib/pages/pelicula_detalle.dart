import 'package:addicts_movies/classes/clase_Populares.dart';
import 'package:addicts_movies/service/populares_servicio.dart';
import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:flutter/material.dart';

//llego desde la pantalla principal apretando alguna plataforma
class PeliculaDetalle extends StatelessWidget {
  PeliculaDetalle({this.title, this.image, this.description});

  final String title;
  final String image;
  final String description;

  int index_pantallas = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelicula detalles'),
      ),
      // body:obtenerPopulares[index_pantallas],
      body: Center(
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
                    itemCount: index_pantallas,
                  ),
                ),
        ),
      ),
    );
  }

  num(int num) {
    return num;
  }
}
