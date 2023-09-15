import 'package:flutter/material.dart';

class NbrButten extends StatefulWidget {
  NbrButten({
    super.key,
    required this.nbr,
    required this.size,
    required this.color,
    required this.bgColor,
  });
  final String nbr;
  final double size;
  final Color color;
  final Color? bgColor;

  @override
  State<NbrButten> createState() => _NbrButtenState();
}

class _NbrButtenState extends State<NbrButten> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(100),
      ),
      width: 90,
      height: 90,
      child: Center(
        child: Text(
          widget.nbr,
          style: TextStyle(
              fontSize: widget.size,
              color: widget.color,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
