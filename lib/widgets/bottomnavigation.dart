import 'package:addicts_movies/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {

  int index_pantallas = 0;

  List<String> pantallas = [
    'PantallaPrincipal',
    'MasVistas',
    'Home',
    'Mantenimiento',
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index_pantallas,
      backgroundColor: Colors.black,
      items: [
        //No logro poner mas de 3 items en el taskbar...
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.black,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.movie_creation_outlined),
          label: 'Movies',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'You',
          backgroundColor: Colors.black,
        ),
      ],
      onTap: (index) {
        if (index == 2) {
          return showSearch(
            context: context,
            delegate: PantallaSearch(),
          );
        }

        index_pantallas = index;
        Navigator.pushNamed(context, pantallas[index_pantallas]);

        // setState(
        //   () {
        //     index_pantallas = index;
        //     print(index_pantallas);
        //   },
        // );
      },
    );
  }
}
