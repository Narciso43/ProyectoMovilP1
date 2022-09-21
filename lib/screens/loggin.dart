import 'package:flutter/material.dart';

class Loggin extends StatelessWidget {
  late String correo, contrasenia;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGGIN'),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          width: double.infinity,
          color: Color.fromARGB(255, 238, 193, 12),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'FORMULARIO DE REGISTRO DEL NUEVO LOGGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: Text('LOGGIN')),
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
