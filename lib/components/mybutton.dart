import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {
  String title;
  double prheight = 50;
  double prwidth = 40;
  final VoidCallback onPress;
  MyButton(
      {super.key,
      required this.onPress,
      required this.title,
      this.prheight = 50,
      this.prwidth = 40});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: prheight,
            width: prwidth,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
