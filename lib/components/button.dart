// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({Key? key, required this.title , this.onTap}) : super(key: key);
  String? title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 50,
          color: Colors.black,
          child: Center(
            child: Text(
              title!,
              style: const TextStyle(
                fontSize: 22,
                color: Color(0xFFF7B3C2),
              ),
            ),
          )),
    );
  }
}
