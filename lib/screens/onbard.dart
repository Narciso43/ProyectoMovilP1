import 'package:app_analisis_cafe/screens/loggin.dart';
import 'package:app_analisis_cafe/screens/registro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onbard extends StatelessWidget {
  //Propidades para nuestros botones.
  TextStyle stily = TextStyle(color: Colors.white12);
  @override
  Widget build(BuildContext context) {
    double slider_fo;

    return Scaffold(
        appBar: AppBar(
          title: Text('APLIACIÓN DE ANALÍSIS'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'ANALISIS DE IMAGENES',
            style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 222, 102, 10),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  color: Color.fromARGB(255, 219, 171, 25),
                  child: Text(
                    'Registrar',
                    style: stily,
                  ),
                  onPressed: () {
                    Get.to(Registro(),
                        transition: Transition.leftToRightWithFade);
                  },
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: RaisedButton(
                  color: Color.fromARGB(255, 143, 197, 7),
                  child: Text(
                    'Loggin',
                    style: stily,
                  ),
                  onPressed: () {
                    Get.to(Loggin(), transition: Transition.zoom);
                  },
                ),
              )
            ],
          )
        ]));
  }
}
