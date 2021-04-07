import 'package:flutter/material.dart';

class Pruebas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey[900],
                Colors.grey[800],
                Colors.grey[700],
              ],
              begin: Alignment.bottomLeft,
              end: Alignment(-1.0, -1.0),
            ),
          ),
        ),
      ),
    );
  }
}
