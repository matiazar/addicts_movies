import 'package:addicts_movies/mantenimiento.dart';
import 'package:flutter/material.dart';

//COSAS QUE ARREGLAR:
// 1. QUE HULU SEA MAS PEQUENIO Y NETFLIX MAS GRANDE...

class PantallaPrincipal extends StatefulWidget {
  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //degrade de colores en el background
          gradient: LinearGradient(
            colors: [
              Colors.grey[900],
              Colors.black,
            ],
            begin: const FractionalOffset(1.0, 0.2),
            end: const FractionalOffset(1.0, 0.9),
          ),
        ),

        //EFECTO DEL APPBAR
        child: CustomScrollView(
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
                      plataformas('assets/images/Netflix1.jpg'),
                      SizedBox(height: 20),
                      plataformas('assets/images/DisneyPlus.jpg'),
                      SizedBox(height: 20),
                      plataformas('assets/images/PrimeVideo.png'),
                      SizedBox(height: 20),
                      plataformas('assets/images/HBO.png'),
                      SizedBox(height: 20),
                      plataformas('assets/images/hulu.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //No logro poner mas de 3 items en el taskbar...
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }

//METODO DE LAS FOTOS
  plataformas(String imagen) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Mantenimiento(),
              ),
            );
          },
          child: Image.asset(
            imagen,
          ),
        ),
      ),
    );
  }
}
