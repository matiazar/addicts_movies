import 'package:flutter/material.dart';
import 'package:addicts_movies/servicios/populares_servicio.dart';
import 'package:addicts_movies/widgets/widget_pelicula.dart';
import 'package:addicts_movies/clases/clase_Populares.dart';

class Populares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FutureBuilder<List<C_Populares>>(
          future: obtenerPopulares(),
          builder: (context, snapshot) => snapshot.data == null
              ? snapshot.hasError
                  ? Center(child: Text('Error'))
                  : Center(
                      child: CircularProgressIndicator(),
                    )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) => PeliculaWidget(
                      titleW: snapshot.data[index].title,
                      imageW: snapshot.data[index].image,
                    ),
                    itemCount: snapshot.data.length,
                  ),
                ),
        ),
      ),
    );
  }

  appbar() {
    return Scaffold(
      body: Container(
        //EFECTO DEL APPBAR
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              //NO LOGRE PONER LA FOTO MAS GRANDE
              floating: true,
              title: Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  fit: BoxFit.scaleDown,
                  height: 70,
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
