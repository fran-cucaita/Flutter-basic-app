import 'dart:async';
import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  CronometroState createState() => CronometroState();
}

class CronometroState extends State<Cronometro> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       margin: EdgeInsets.all(8),
//       height: 100,
//       width: MediaQuery.of(context).size.width * .8,
//       color: Colors.orange,
//     );
//   }
// }

  int _timerValue = 0;
  int _seconds = 00;
  bool _paused = true;
  final Stream<int> _periodicStream =
      Stream.periodic(const Duration(milliseconds: 1000), (i) => i);
  int _previousStreamValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      height: 100,
      width: MediaQuery.of(context).size.width * .8,
      child: StreamBuilder(
        stream: this._periodicStream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != this._previousStreamValue) {
              //print('Latest snapshot from stream: ${snapshot.data}');
              this._previousStreamValue = snapshot.data!;
              if (!_paused) {
                this._timerValue++;
              }
            }
            if (_timerValue == 60) {
              _timerValue = 0;
              _seconds++;
            }
          }
          return Card(child: _buildTimerUI());
        },
      ),
    );
  }

  Widget _buildTimerUI() {
    return Container(
      // width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$_seconds:$_timerValue',
            style: Theme.of(context).textTheme.headline4,
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(this._paused ? Icons.play_arrow : Icons.pause),
                onPressed: () => setState(() => this._paused = !this._paused),
              ),
              IconButton(
                icon: const Icon(Icons.stop),
                onPressed: () => setState(
                  () {
                    this._timerValue = 0;
                    this._paused = true;
                    this._seconds = 00;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
