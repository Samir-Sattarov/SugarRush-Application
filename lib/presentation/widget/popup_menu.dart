import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopupMenuWidget extends StatelessWidget {
  final String text;
  final String image;
  final Function() onTap;
  const PopupMenuWidget(
      {Key? key, required this.text, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(image)),
          SizedBox(width: 30.w),
          Text(
            text,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
