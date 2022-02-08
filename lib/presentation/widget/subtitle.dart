import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitle extends StatelessWidget {
  final String text;
  const SubTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 13.sp,
      ),
    );
  }
}
