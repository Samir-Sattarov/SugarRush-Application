import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldMainWidget extends StatelessWidget {
  final String labelText;
  final String image;
  final TextEditingController controller;
  final FormFieldValidator validator;
  const TextFieldMainWidget({
    Key? key,
    required this.labelText,
    required this.image,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      validator: validator,
      style:
          const TextStyle(color: Colors.white, decoration: TextDecoration.none),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      cursorColor: const Color(0xffD87070),
      decoration: InputDecoration(
        focusColor: Colors.yellow,
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
          SizedBox(height: 10.h),
        ]),
        errorStyle: const TextStyle(fontSize: 9, height: 0.10),
        alignLabelWithHint: true,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: true,
        fillColor: const Color(0xff2E2E2E),
        contentPadding: const EdgeInsets.only(bottom: 0, top: 10),
      ),
    );
  }
}
