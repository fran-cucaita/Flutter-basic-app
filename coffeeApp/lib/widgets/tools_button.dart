import 'package:flutter/material.dart';

class ButtonTools extends StatelessWidget {
  final String title;
  const ButtonTools({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
        overflow: TextOverflow.visible,
        maxLines: 1,
      ),
    );
  }
}
