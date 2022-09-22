import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //static const String routeName ='/';

    return Scaffold(
      appBar: AppBar(
        title: Text('Analis de Fotos'),
      ),
      body: Center(
        child: Container(
          child: Text('Holas Sistema'),
        ),
      ),
    );
  }
}
