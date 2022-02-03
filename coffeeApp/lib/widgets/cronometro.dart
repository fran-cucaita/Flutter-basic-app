import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  _CronometroState createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.green[200],
      child: Text('Aca va el cronometro'),
    );
  }
}
