import 'package:addicts_movies/pages/masVistas.dart';
import 'package:addicts_movies/service/masVistas_servicio.dart';
import 'package:addicts_movies/service/populares_servicio.dart';
import 'package:addicts_movies/widgets/pantalla_principal_w.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mantenimiento.dart';
import 'pages/pantalla_principal.dart';

// -------- PROYECTO DE NIVELACION --------

void main() {
  runApp(MyApp());
}

//provider
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PopularesProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MasVistasProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'PantallaPrincipal',
        routes: {
          'Home': (BuildContext context) => PantallaPrincipal(),
          'PantallaPrincipal': (BuildContext context) => PantallaPrincipal_W(),
          'Mantenimiento': (BuildContext context) => Mantenimiento(),
          'MasVistas': (BuildContext context) => MasVistas(),
        },
      ),
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
}
