import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSecondWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xffD87070),
      style: const TextStyle(color: Colors.white),
      controller: controller,
      obscureText: true,
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
          image: AssetImage(imagePreffix),
        ),
        suffixIcon: IconButton(
          icon: Image(
            image: AssetImage(imageSuffix),
          ),
          onPressed: () {},
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
          SizedBox(height: 10.h),
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
