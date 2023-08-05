import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   TextEditingController? controller;
   String? label;

  CustomTextField({this.controller,this.label});


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label.toString()),
      ),
    );
  }
}