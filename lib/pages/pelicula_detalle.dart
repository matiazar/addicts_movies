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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              //NO LOGRE PONER LA FOTO MAS GRANDE

              backgroundColor: Colors.grey[800],
            ),

            //LA LISTA DE FOTOS + LA FUNCION DEL APPBAR
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    //NO FUNCIONAN  LOS AXIS...??
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                      ),

                      //METODOS PARA CREAR LAS IMAGENES
                      PeliculaWidget(
                        titleW: title,
                        imageW: image,
                        descriptionW: description,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
