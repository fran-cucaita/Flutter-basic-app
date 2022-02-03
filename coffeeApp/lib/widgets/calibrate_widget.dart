import 'package:flutter/material.dart';

class CalibrateWidget extends StatefulWidget {
  const CalibrateWidget({Key? key}) : super(key: key);

  @override
  _CalibrateWidgetState createState() => _CalibrateWidgetState();
}

final List<String> _filtro = ['Doble', 'Simple'];
var startfiltro = _filtro[0];

final List<String> _ratio = ['1:1', '1:2', '1:3'];
var startRatio = _ratio[0];

class _CalibrateWidgetState extends State<CalibrateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.blue[100],
      width: 250,
      child: Column(
        children: [
          Text(
            "Calibrar",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: 200,
            child: Column(
              children: [
                Container(
                  width: 200,
                  color: Colors.white,
                  child: DropdownButton<String>(
                    value: startfiltro,
                    items: _filtro.map((m) {
                      return DropdownMenuItem<String>(
                        value: m,
                        child: Text(m),
                      );
                    }).toList(),
                    onChanged: (value) {
                      print(value);
                      startfiltro = value.toString();
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Ingrese el peso",
                      border: OutlineInputBorder(),
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
                Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  child: Text("La cantidad en taza esperada es ... "),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
