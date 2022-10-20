import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class RaisedButtonCustomWidget extends StatelessWidget {
  final IconData icon;
  final String? text;
  final Function? onPressed;
  final Color borderColor;
  const RaisedButtonCustomWidget(
      {super.key,
      required this.icon,
      this.text,
      this.onPressed,
      this.borderColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: borderColor,
      ),
      onPressed: () => onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
