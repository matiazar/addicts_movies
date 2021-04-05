import 'package:flutter/material.dart';
import 'pantalla_principal.dart';

// ----------- DEBORAH MIZRAHI -----------
// -------- PROYECTO DE NIVELACION --------
//------------ ADDICTS MOVIES ------------

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
