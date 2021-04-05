import 'package:flutter/material.dart';

class PeliculaWidget extends StatelessWidget {
  const PeliculaWidget({
    Key key,
    this.titleW,
    this.imageW,
  }) : super(key: key);

  final String titleW;
  final String imageW;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titleW,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
              'https://www.themoviedb.org/t/p/w600_and_h900_bestv2' + imageW),
        ),
      ],
    );
  }
}
