import 'package:flutter/material.dart';

//llego desde la pantalla principal apretando alguna plataforma
class Mantenimiento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lo Sentimos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/triangulo.jpg',
                height: 90,
              ),
              Text(
                'En mantenimiento',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
