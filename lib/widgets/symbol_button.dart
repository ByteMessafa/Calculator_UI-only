import 'package:flutter/material.dart';

class SymbolButton extends StatefulWidget {
  const SymbolButton(
      {super.key, required this.icon, required this.size, required this.color});
  final IconData icon;
  final double size;
  final Color color;

  @override
  State<SymbolButton> createState() => _SymbolButtonState();
}

class _SymbolButtonState extends State<SymbolButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(100),
      ),
      width: 90,
      height: 90,
      child: Center(
        child: Icon(
          widget.icon,
          size: widget.size,
          color: widget.color,
        ),
      ),
    );
  }
}
