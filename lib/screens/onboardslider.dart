import 'package:app_analisis_cafe/screens/onboarding_paso.dart';
import 'package:app_analisis_cafe/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_analisis_cafe/widgets/siguienteBoton.dart';

class OnboardSlider extends StatelessWidget {
  const OnboardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          _OnboarSliderPag(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _puntos(),
          ),
          Positioned(
              right: 0, bottom: screenHeight * 0.02, child: SiguienteBoton()),
        ],
      ),
    );
  }
}

class SiguienteBoton extends StatelessWidget {
  const SiguienteBoton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(elevation:
            MaterialStateProperty.resolveWith<double>((states) {
          return 40.0;
        }), shadowColor: MaterialStateProperty.resolveWith<Color>((states) {
          return CustomTheme.colorGray;
        }), padding: MaterialStateProperty.resolveWith<EdgeInsets>((states) {
          return EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0);
        }), shape:
            MaterialStateProperty.resolveWith<RoundedRectangleBorder>((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(43.0),
              topLeft: Radius.circular(43.0),
            ),
          );
        })),
        onPressed: () {},
        child: Text(
          'SIGUIENTE',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ));
  }
}

class _OnboarSliderPag extends StatelessWidget {
  const _OnboarSliderPag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnboardinPaso(
          rutaImagen: 'assets/img/mexico.png',
          titulo: 'MEXICO PAIS DE SIEMBRA DE  CAFÉ',
          subtitulo: 'FFFFASDFASDFASDFASDF',
          color: Color.fromARGB(255, 28, 21, 20),
        ),
        OnboardinPaso(
          rutaImagen: 'assets/img/planta.png',
          titulo: 'cafesin',
          subtitulo: 'sfsfasfs',
          color: Color.fromARGB(255, 28, 67, 99),
        ),
        OnboardinPaso(
          rutaImagen: 'assets/img/cultivos.png',
          titulo: 'cafesin',
          subtitulo: 'sfsfasfs',
          color: Colors.yellow,
        ),
      ],
    );
  }
}

class _puntos extends StatelessWidget {
  const _puntos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: screenHeight * 0.12),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        _punto(active: false),
        SizedBox(
          width: 10,
        ),
        _punto(active: true),
        SizedBox(
          width: 10,
        ),
        _punto(active: false),
        SizedBox(
          width: 10,
        ),
      ]),
    );
  }
}

class _punto extends StatelessWidget {
  const _punto({
    Key? key,
    required this.active,
  }) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            active ? CustomTheme.colorBlue : Color.fromARGB(255, 86, 114, 137),
        borderRadius: BorderRadius.circular(4.0),
      ),
      width: 10.0,
      height: 10.0,
    );
  }
}
