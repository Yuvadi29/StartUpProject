import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Function? onPressed;
  const CustomButton(
      {Key? key, this.buttonText, this.buttonColor, this.onPressed, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        // onTap: onPressed,
        onTap: onPressed as void Function()?,
        child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              buttonText!,
              style: TextStyle(color: textColor, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
