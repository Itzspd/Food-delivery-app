import 'package:flutter/material.dart';

Container imageslider(double height, String imagefile) {
  return Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(54, 64, 64, 1),
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(
          imagefile,
        ),
        fit: BoxFit.fill,
      ),
    ),
  );
}
