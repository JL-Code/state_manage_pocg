import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
