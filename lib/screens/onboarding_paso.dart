import 'package:app_analisis_cafe/utils/utils.dart';
import 'package:flutter/material.dart';

class OnboardinPaso extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String rutaImagen;
  final Color color;

  final TextStyle tituloStyle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 28.0,
    color: CustomTheme.colorGreen,
  );

  final TextStyle subtituloStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    color: CustomTheme.colorSpanishGray,
  );

  OnboardinPaso(
      {super.key,
      required this.titulo,
      required this.subtitulo,
      required this.rutaImagen,
      required this.color});

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    var screenWidth = Size.width;

    return Container(
      color: CustomTheme.colorSpanishGray,
      child: Column(
        children: [
          SizedBox(height: 85.0),
          Image(
            image: AssetImage(rutaImagen),
            width: screenWidth * 0.98,
            fit: BoxFit.fitWidth,
          ),
          Container(
            width: Size.width * 0.8,
            child: Text(
              titulo,
              style: tituloStyle,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 80.0),
          Container(
            width: Size.width * 0.8,
            child: Text(
              subtitulo,
              style: subtituloStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
