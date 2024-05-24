import 'package:flutter/material.dart';

class BuildTextWidget extends StatefulWidget {
  final String text;
  final FontWeight fontWeight;
  final double size;
  final Color color;
  const BuildTextWidget(
      {super.key,
      required this.text,
      required this.fontWeight,
      required this.size,
      required this.color});

  @override
  State<BuildTextWidget> createState() => _BuildTextWidgetState();
}

class _BuildTextWidgetState extends State<BuildTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          color: widget.color,
          fontSize: widget.size,
          fontWeight: widget.fontWeight),
    );
  }
}
