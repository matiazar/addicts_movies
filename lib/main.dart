import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/pantalla_principal.dart';

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

//provider
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         initialRoute: 'Home',
//         routes: {
//           'Home': (BuildContext context) => PantallaPrincipal(),
//         },
//       ),
//     );
//   }
// }

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
