import 'package:flutter/material.dart';

Text normaltext(double fontsize, String title) {
  return Text(
    title,
    style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: fontsize,
    ),
  );
}

Text headlinetext(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 30,
      color: Colors.white,
    ),
  );
}

SizedBox space(double height) {
  return SizedBox(
    height: height,
  );
}

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color.fromRGBO(16, 21, 16, 1),
    errorColor: Colors.redAccent,
  );
}
