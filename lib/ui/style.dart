import 'package:flutter/material.dart';

Color primaryColor = const Color.fromARGB(255, 1, 139, 252);
Color primaryColorDark = Color.fromARGB(255, 0, 13, 252);
Color light = Colors.white;
Color dark = Colors.black;
Color bgButton = Color.fromARGB(74, 158, 158, 158);

getColorPrimary(bool a) {
  return a ? dark : light;
}

getTheColorOfC(bool a) {
  return a
      ? const Color.fromARGB(255, 238, 95, 95)
      : const Color.fromARGB(255, 190, 34, 23);
}

getTheColorOfSpButton(bool a) {
  return a ? const Color(0xFF6CD03B) : const Color(0xFF318607);
}

getTheColorOfEqualButton(bool a) {
  return a ? const Color(0xFF318607) : const Color(0xFF42A610);
}
