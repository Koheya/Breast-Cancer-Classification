// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  Inputs({
    Key? key,
    required this.highRange,
    required this.lowRange,
    required this.hint,
    this.controller,
  }) : super(key: key);
  String? hint;
  var controller;
  double highRange;
  double lowRange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: hint!,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          )),
      validator: (value) {
        if (controller.text.isEmpty) {
          return 'Required Field';
        }
        if (double.tryParse(value!) != null) {
          double parsedValue = double.parse(value);
          if (parsedValue > highRange || parsedValue < lowRange) {
            return 'Value is out of Range';
          }
        }
        return null;
      },
    );
  }
}
