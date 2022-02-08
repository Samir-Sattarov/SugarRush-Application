import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldMainWidget extends StatelessWidget {
  final String labelText;
  final String image;

  final TextEditingController controller;
  const TextFieldMainWidget({
    Key? key,
    required this.image,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style:
          const TextStyle(color: Colors.white, decoration: TextDecoration.none),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      cursorColor: const Color(0xffD87070),
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
          image: AssetImage(image),
        ),
        label: Column(children: [
          SizedBox(height: 30.h),
          Text(
            labelText,
            style: GoogleFonts.openSans(
              color: const Color(0xffACACAC),
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
        fillColor: const Color(0xff494949),
        contentPadding: const EdgeInsets.only(bottom: 0, top: 10),
      ),
    );
  }
}
