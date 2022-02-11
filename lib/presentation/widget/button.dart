import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double? weight;
  final double height;
  final Color background;
  final Color textColor;
  final Widget text;
  final Function() onPressed;

  const ButtonWidget({
    Key? key,
    this.weight,
    required this.height,
    required this.background,
    required this.textColor,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: text,
      style: ElevatedButton.styleFrom(
        onPrimary: textColor,
        primary: background,
        shadowColor: Colors.white,
        elevation: 0.0,
        //background color of button
        side: const BorderSide(width: 1, color: Color(0xffF19D9D)),
        //border width and color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        minimumSize: Size(
          weight ?? MediaQuery.of(context).size.width,
          height,
        ),
      ),
    );
  }
}
