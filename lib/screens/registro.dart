import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registro extends StatelessWidget {
  late String correo, contrasenia;
//TextEditingController correo,contraseña;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Apliacion Analisis Cafe'),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          width: double.infinity,
          color: Color.fromARGB(255, 232, 221, 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'FORMULARIO DE REGISTRO DEL NUEVO USUARIO',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: Text('Correo')),
                Expanded(child: TextField(
                  onChanged: (value) {
                    correo = value;
                  },
                ))
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: Text('Contraseña')),
                Expanded(
                    child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    contrasenia = value;
                  },
                ))
              ],
            ),
            SizedBox(height: 12),
            RaisedButton(
                child: Text('Registrar'),
                onPressed: () {
                  //se implementa el registro.
                })
          ]),
        ));
  }
}
