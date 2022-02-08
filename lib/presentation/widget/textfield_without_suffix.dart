import 'package:flutter/material.dart';
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
      cursorColor: const Color(0xffD87070),
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
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
        labelStyle: GoogleFonts.openSans(
          color: const Color(0xff666666),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: color,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
