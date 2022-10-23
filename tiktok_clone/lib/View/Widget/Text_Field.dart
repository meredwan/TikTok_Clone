import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktok_clone/Color/Constant.dart';
import '';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final IconData myIcon;
  String myLabelText;
  final bool ishide;
  TextInputField(
      {Key? key,
      required this.controller,
      required this.myIcon,
      required this.myLabelText,
       this.ishide= false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: ishide,
      controller: controller,
      decoration: InputDecoration(
          icon: Icon(myIcon),
          labelText: myLabelText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: borderColor))),
    );
  }
}
