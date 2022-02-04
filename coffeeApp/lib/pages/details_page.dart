import 'package:flutter/material.dart';
import 'package:test_application/widgets/calibrate_widget.dart';
import 'package:test_application/widgets/cronometro.dart';

import 'home_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  static const String ROUTE = '/details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Details'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 150,
                  width: 400,
                  child: Image.asset('lib/assets/cafe.jpg'),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  // color: Colors.blue,
                  height: 150,
                  width: 400,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'El café expreso (también llamado café exprés, express, espresso o solo) es una forma de preparación de café originada en Italia.1​ Debe su término a la obtención de esta bebida a través de una cafetera expreso.2​ Se caracteriza por su rápida preparación a una alta presión y por un sabor y textura más concentrados',
                    textAlign: TextAlign.justify,
                  ),
                ),
                CalibrateWidget(),
                SizedBox(
                  height: 30,
                ),
                Cronometro(),
                Container(
                  width: 300,
                  color: Colors.red,
                  child: TextField(
                    onChanged: (value) => print(value),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
