// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> PasswordUpdatedModalBottomSheetWidget(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Center(
                child: Container(
                  width: 140.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffB2B2B2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 34.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Password Updated',
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 46.w,
                    height: 46.h,
                    child: const Image(
                      image: AssetImage(StaticImages.iCheked),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 337.w,
                child: Text(
                  'Your password has been updated.',
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88),
              child: Center(
                child: ButtonWidget(
                  height: 51.h,
                  background: const Color(0xffff748c),
                  textColor: Colors.white,
                  text: Text(
                    'Login',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
