import 'package:flutter/material.dart';

class OnboardSlider extends StatelessWidget {
  const OnboardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Container(color: Colors.brown),
              Container(color: Colors.red),
              Container(color: Colors.yellow),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: screenHeight * 0.1),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _Punto(),
                SizedBox(
                  width: 10,
                ),
                _Punto(),
                SizedBox(
                  width: 10,
                ),
                _Punto(),
                SizedBox(
                  width: 10,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

//widget Sin estado
class _Punto extends StatelessWidget {
  const _Punto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
      ),
      width: 10.0,
      height: 10,
    );
  }
}
