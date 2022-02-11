import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String labelText;
  final String imagePreffix;
  final Color color;
  final bool isPasswordField;
  final Color textColor;
  final TextInputType inputType;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;

  const TextFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.imagePreffix,
    required this.controller,
    required this.color,
    required this.validator,
    this.isPasswordField = false,
    this.inputType = TextInputType.text,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool _showPassword = false;

  get _enableSuffix => !widget.isPasswordField
      ? null
      : IconButton(
          color: const Color(0xff666666),
          icon: Icon(_showPassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        border: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        prefixIcon: Image(
          image: AssetImage(widget.imagePreffix),
        ),
        suffixIcon: _enableSuffix,
        label: Column(children: [
          SizedBox(height: 30.h),
          Text(
            widget.labelText,
            style: GoogleFonts.openSans(
              color: const Color(0xff666666),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10.h),
        ]),
        alignLabelWithHint: true,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: true,
        fillColor: widget.color,
        errorMaxLines: 1,
        errorStyle: GoogleFonts.openSans(
          color: const Color.fromARGB(228, 255, 49, 49),
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
      ),
      validator: widget.validator,
      cursorColor: const Color(0xffD87070),
      style: TextStyle(color: widget.textColor),
      controller: widget.controller,
      obscureText: _showPassword,
      keyboardType: widget.inputType,
    );
  }
}
