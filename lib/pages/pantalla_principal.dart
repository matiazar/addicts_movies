import 'package:addicts_movies/mantenimiento.dart';
import 'package:addicts_movies/pages/populares.dart';
import 'package:addicts_movies/widgets/pantalla_principal_w.dart';
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
  List<Widget> pantallas = [
    PantallaPrincipal_W(),
    Mantenimiento(),
    Populares(),
    Mantenimiento(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[index_pantallas],
      //No puedo hacer que salga el nombre en todos al principio
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          //No logro poner mas de 3 items en el taskbar...
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Movies',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'You',
            backgroundColor: Colors.black,
          ),
        ],
        onTap: (index) {
          setState(() {
            index_pantallas = index;
          });
        },
        currentIndex: index_pantallas,
      ),
    );
  }
}
