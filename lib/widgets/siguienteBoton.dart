import 'package:app_analisis_cafe/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SiguienteBoton extends StatelessWidget {
  const SiguienteBoton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(elevation:
            MaterialStateProperty.resolveWith<double>((states) {
          return 10.0;
        }), backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          return CustomTheme.olorLightGray;
        }), shadowColor: MaterialStateProperty.resolveWith<Color>((states) {
          return CustomTheme.colorBlue;
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
          'Siguiente12',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ));
  }
}
