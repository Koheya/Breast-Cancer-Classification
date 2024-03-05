
// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class InputTitle extends StatelessWidget {
   InputTitle({Key? key , required this.title}) : super(key: key);
String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18),
    );
  }
}
