import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleMain extends StatelessWidget {
  final String text;
  const TitleMain({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.raleway(
          fontSize: 36.sp, color: Colors.white, fontWeight: FontWeight.w800),
    );
  }
}
