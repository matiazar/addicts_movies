import 'package:addicts_movies/pages/pelicula_detalle.dart';
import 'package:flutter/material.dart';

class PeliculaWidget extends StatelessWidget {
  const PeliculaWidget({
    Key key,
    this.titleW,
    this.imageW,
    this.descriptionW = '',
  }) : super(key: key);

  final String titleW;
  final String imageW;
  final String descriptionW;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titleW,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PeliculaDetalle(
                    image: imageW,
                    title: titleW,
                    description: descriptionW,
                  ),
                ),
              );
            },
            child: Image.network(
              'https://www.themoviedb.org/t/p/w600_and_h900_bestv2' + imageW,
              height: 300,
            ),
          ),
        ),
        Text(
          descriptionW,
          style: TextStyle(
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
