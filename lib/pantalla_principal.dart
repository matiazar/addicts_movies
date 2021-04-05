import 'package:addicts_movies/main.dart';
import 'package:flutter/material.dart';
import 'segunda_pantalla.dart';

//DEBORAH MIZRAHI
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
                  //fit: BoxFit.scaleDown,
                  height: 70,
                ),
              ),
              // expandedHeight: 200,
              // flexibleSpace: Image.asset(
              //   'assets/images/Logo.png',
              //   fit: BoxFit.cover,
              //   height: 70,
              // ),
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
                      plataformas('assets/images/DisneyPlus.jpg'),
                      SizedBox(height: 20),
                      plataformas('assets/images/Netflix1.jpg'),
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
      // backgroundColor: Colors.black,
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
                builder: (context) => Pantalla1(),
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
