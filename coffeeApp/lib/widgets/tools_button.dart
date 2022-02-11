import 'package:flutter/material.dart';
import 'package:test_application/widgets/product_card.dart';

class ButtonTools extends StatefulWidget {
  //final String title;
  const ButtonTools({
    Key? key,
    //required this.title,
  }) : super(key: key);

  @override
  State<ButtonTools> createState() => _ButtonToolsState();
}

class _ButtonToolsState extends State<ButtonTools> {
  final List<bool> _selections = [true, false, false, false, false];
  final List<String> _items = [
    "Fliters",
    "Coffee",
    "Drippers",
    "Machines",
    "Accesorios",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            height: 50,
            margin: EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),
            child: ToggleButtons(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.all(16),
                    child: Text(_items[0])),
                Container(
                    padding: EdgeInsetsDirectional.all(16),
                    child: Text(_items[1])),
                Container(
                    padding: EdgeInsetsDirectional.all(16),
                    child: Text(_items[2])),
                Container(
                    padding: EdgeInsetsDirectional.all(16),
                    child: Text(_items[3])),
                Container(
                    padding: EdgeInsetsDirectional.all(16),
                    child: Text(_items[4])),
              ],
              isSelected: _selections,
              onPressed: ((newIndex) {
                setState(
                  () {
                    print(_items[newIndex]);
                    for (int index = 0; index < _selections.length; index++) {
                      if (index == newIndex) {
                        _selections[index] = true;
                      } else {
                        _selections[index] = false;
                      }
                    }
                  },
                );
              }),
              color: Colors.white,
              selectedColor: Colors.orange,
              fillColor: Colors.grey[700],
              borderRadius: BorderRadius.circular(10),
              borderColor: Colors.grey[800],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            width: MediaQuery.of(context).size.width * 1,
            height: 250,
            color: Colors.grey[900],
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard()
              ],
            ),
          )
        ],
      ),
    );
  }
}
