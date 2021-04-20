import 'package:addicts_movies/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

//llego desde la pantalla principal apretando alguna plataforma
class Mantenimiento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('mantenimiento'),
      ),
      bottomNavigationBar: BottomNavigation(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/triangulo.jpg',
              height: 90,
            ),
            Text(
              'En mantenimiento',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget appbar() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          //NO LOGRE PONER LA FOTO MAS GRANDE
          floating: true,
          title: Center(
            child: Image.asset(
              'assets/images/Logo.png',
              height: 70,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
