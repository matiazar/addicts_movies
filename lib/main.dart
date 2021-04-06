import 'package:flutter/material.dart';
import 'pantallas/pantalla_principal.dart';

// -------- PROYECTO DE NIVELACION --------

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaPrincipal(),
    );
  }
}

//simple prueba de cambio de pantalla
class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOLAAA'),
      ),
      body: Center(
        child: InkWell(
          child: Image.asset('assets/images/Logo.png'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PantallaPrincipal()),
            );
          },
        ),
      ),
    );
  }

//appbar igaul que el de la pantalla principal
  // appbar() {
  //   return Scaffold(
  //     body: Container(
  //       //EFECTO DEL APPBAR
  //       child: CustomScrollView(
  //         slivers: [
  //           SliverAppBar(
  //             //NO LOGRE PONER LA FOTO MAS GRANDE
  //             floating: true,
  //             title: Center(
  //               child: Image.asset(
  //                 'assets/images/Logo.png',
  //                 fit: BoxFit.scaleDown,
  //                 height: 70,
  //               ),
  //             ),
  //             backgroundColor: Colors.transparent,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
