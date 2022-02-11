import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalibrateWidget extends StatefulWidget {
  const CalibrateWidget({Key? key}) : super(key: key);

  @override
  _CalibrateWidgetState createState() => _CalibrateWidgetState();
}

final List<String> _filtro = ['Doble', 'Simple'];
var startfiltro = _filtro[0];

final List<String> _ratio = ['1:1', '1:2', '1:3'];
var startRatio = _ratio[0];

int n = 0;

class _CalibrateWidgetState extends State<CalibrateWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(4),
        width: 400,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  // Container(
                  //   width: 200,
                  //   color: Colors.white,
                  //   child: DropdownButton<String>(
                  //     value: startfiltro,
                  //     items: _filtro.map((m) {
                  //       return DropdownMenuItem<String>(
                  //         value: m,
                  //         child: Text(m),
                  //       );
                  //     }).toList(),
                  //     onChanged: (value) {
                  //       print(value);
                  //       startfiltro = value.toString();
                  //       setState(() {});
                  //     },
                  //   ),
                  // ),
                  Container(
                    padding: EdgeInsets.all(0),
                    width: 100,
                    color: Colors.white,
                    child: TextField(
                      onChanged: (value) {
                        print(value);
                        // n = int.parse(value);
                      },
                      decoration: InputDecoration(
                        focusColor: Colors.amber,
                        labelText: "Peso",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    width: 200,
                    color: Colors.white,
                    child: DropdownButton<String>(
                      value: startRatio,
                      items: _ratio.map((m) {
                        return DropdownMenuItem<String>(
                          value: m,
                          child: Text(m),
                        );
                      }).toList(),
                      onChanged: (value) {
                        print(value);
                        startRatio = value.toString();
                        setState(() {});
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int valor = n * 2;
                      print(valor);
                    },
                    child: Text('Calcular'),
                  ),

                  Container(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    child: Text("La cantidad en taza esperada es $n"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
