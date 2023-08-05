import 'package:flutter/material.dart';

showSnack(BuildContext context, text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration: Duration(milliseconds: 300),
  ));
}
