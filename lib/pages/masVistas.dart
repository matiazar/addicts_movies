import 'package:addicts_movies/widgets/bottomnavigation.dart';
import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:flutter/material.dart';
import 'package:addicts_movies/service/masVistas_servicio.dart';
import 'package:provider/provider.dart';

class MasVistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('builder');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Populares'),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        //provider
        child: Consumer<MasVistasProvider>(
          builder: (context, value, child) {
            return ListView(
              scrollDirection: Axis.horizontal,
              children: value.peliculas
                  .map((val) =>
                      new PeliculaWidget(titleW: val.title, imageW: val.image))
                  .toList(),
            );

            // return ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemCount: value.peliculas.length,
            //   itemBuilder: (context, index) => PeliculaWidget(
            //     titleW: value.peliculas[index].title,
            //     imageW: value.peliculas[index].image,
            //     // descriptionW: value.peliculas[index].description,
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
