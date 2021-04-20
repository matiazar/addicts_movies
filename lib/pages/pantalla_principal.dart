import 'package:addicts_movies/mantenimiento.dart';
import 'package:addicts_movies/pages/masVistas.dart';
import 'package:addicts_movies/pages/populares.dart';
import 'package:addicts_movies/widgets/bottomnavigation.dart';
import 'package:addicts_movies/widgets/pantalla_principal_w.dart';
import 'package:addicts_movies/widgets/search_widget.dart';
import 'package:flutter/material.dart';

//COSAS QUE ARREGLAR:
// 1. QUE HULU SEA MAS PEQUENIO Y NETFLIX MAS GRANDE...
// 2. Quiero poner mas de un item en el taskbar
// 3. No funcioanan los botones de abajo

class PantallaPrincipal extends StatefulWidget {
  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int index_pantallas = 0;
  // List<Widget> pantallas = [
  //   PantallaPrincipal_W(),
  //   MasVistas(),
  //   Container(),
  //   Mantenimiento(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pantallas[index_pantallas],
      //No puedo hacer que salga el nombre en todos al principio
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
