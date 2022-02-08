import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldMainWidget extends StatelessWidget {
  final String labelText;
  final String rootText;
  final String image;

  final TextEditingController controller;
  const TextFieldMainWidget({
    Key? key,
    required this.image,
    required this.labelText,
    required this.controller,
    required this.rootText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: const Color(0xffD87070),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        prefixIcon: Image(
          image: AssetImage(image),
        ),
        enabled: true,
        labelStyle: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        label: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rootText,
                style: GoogleFonts.openSans(
                  color: const Color(0xffACACAC),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 3.h),
              Text(labelText),
            ]),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: const Color(0xff494949),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(6)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
