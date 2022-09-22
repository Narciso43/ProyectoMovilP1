import 'package:flutter/material.dart';

class OnboardinPaso extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String rutaImagen;
  final Color color;

  const OnboardinPaso(
      {super.key,
      required this.titulo,
      required this.subtitulo,
      required this.rutaImagen,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        children: [
          Image(
            image: AssetImage(rutaImagen),
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
