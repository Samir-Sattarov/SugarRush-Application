import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWithoutWidget extends StatelessWidget {
  final String labelText;

  final String image;
  final Color color;
  final TextEditingController controller;

  const TextFieldWithoutWidget({
    Key? key,
    required this.color,
    required this.image,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      cursorColor: const Color(0xffD87070),
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(6),
        ),
        prefixIcon: Image(
          image: AssetImage(image),
        ),
        label: Column(children: [
          SizedBox(height: 30.h),
          Text(
            labelText,
            style: GoogleFonts.openSans(
              color: const Color(0xff666666),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 6.h),
        ]),
        alignLabelWithHint: true,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: true,
        fillColor: color,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
