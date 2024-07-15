// round_button.dart
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final double fontsize;
  final Function() onTap;

  const RoundButton({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontsize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
