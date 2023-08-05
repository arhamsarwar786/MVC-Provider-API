import 'package:final_api/utils/constants.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  var onPressed, text;

  CustomButton({this.onPressed,this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed, child: Text(text),height: 40,minWidth: 200,color: AppColors.primaryColor,);
  }
}