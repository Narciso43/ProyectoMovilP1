import 'package:app_analisis_cafe/screens/loggin.dart';
import 'package:app_analisis_cafe/screens/onbard.dart';
import 'package:app_analisis_cafe/screens/onboardslider.dart';
import 'package:app_analisis_cafe/screens/registro.dart';
import 'package:app_analisis_cafe/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    //double currenSliderValue;

    return GetMaterialApp(
      theme: CustomTheme.theme,
      initialRoute: '/onboard',
      getPages: [
        GetPage(name: '/onboard', page: () => OnboardSlider()),
        GetPage(name: '/principal', page: () => Onbard()),
        GetPage(name: '/login', page: () => Loggin()),
        GetPage(name: '/registro', page: () => Registro()),
      ],
    );
  }
}
