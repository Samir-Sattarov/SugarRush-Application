import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSecondWidget extends StatefulWidget {
  final String labelText;
  final String imagePreffix;
  final String imageSuffix;
  final Color color;
  final TextEditingController controller;

  const TextFieldSecondWidget({
    Key? key,
    required this.labelText,
    required this.imagePreffix,
    required this.imageSuffix,
    required this.controller,
    required this.color,
  }) : super(key: key);

  @override
  State<TextFieldSecondWidget> createState() => _TextFieldSecondWidgetState();
}

class _TextFieldSecondWidgetState extends State<TextFieldSecondWidget> {
  bool isBool = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xffD87070),
      style: const TextStyle(color: Colors.white),
      controller: widget.controller,
      obscureText: isBool,
      keyboardType: TextInputType.text,
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
        suffixIcon: IconButton(
          color: const Color(0xff666666),
          icon: Icon(isBool
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              isBool = !isBool;
            });
          },
        ),
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
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
