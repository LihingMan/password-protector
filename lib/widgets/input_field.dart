import 'package:flutter/material.dart';
import 'package:password_protector/constants.dart';



class InputField extends StatelessWidget {
  final isPassword;
  final keyboardType;
  final String hintText;
  final int maxLines;
  final Color backgroundColour;
  final TextEditingController controller;
  final onSubmitted;

  const InputField({
    Key key,
    this.isPassword,
    this.keyboardType,
    this.maxLines = 1,
    this.hintText = "",
    this.backgroundColour,
    @required this.controller,
    this.onSubmitted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.d_30, horizontal: Dimensions.d_55),
      child: Material(
        color: backgroundColour == null  ? Colours.white : backgroundColour,
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType,
          maxLength: 20,
          maxLines: maxLines,
          textAlign: TextAlign.center,
          onSubmitted: onSubmitted,
          toolbarOptions: ToolbarOptions(
            cut: false,
            copy: false,
            selectAll: false,
            paste: false
          ),
          decoration: InputDecoration(
            contentPadding: Paddings.horizontal_5,
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Colours.grey)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Colours.blue)
            ),
          ),
        ),
      )
    );
  }

  // void dispose() {
  //   this.controller.dispose();
  // }
}
