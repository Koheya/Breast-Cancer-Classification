
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
   PageTitle({Key? key , this.pageTitle}) : super(key: key);
String? pageTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      pageTitle!,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
