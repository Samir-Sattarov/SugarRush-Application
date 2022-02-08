import 'package:flutter/material.dart';
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
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
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
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabled: true,
        labelStyle: GoogleFonts.openSans(
          color: const Color(0xff666666),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        labelText: labelText,
        filled: true,
        fillColor: color,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
