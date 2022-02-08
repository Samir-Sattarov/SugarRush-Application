// ignore_for_file: non_constant_identifier_names, import_of_legacy_library_into_null_safe
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/main_screen.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

Future<dynamic> VerificationCodeModalBottomSheetWidget(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height - 200,
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
              child: Text(
                'Verification Code',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 337.w,
                child: Text(
                  'Enter your email for the verification process, we will send 4 digit code to your registered email.',
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Center(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VerificationCodeInput(
                    itemDecoration: BoxDecoration(
                      color: const Color(0xffE4E4E4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    keyboardType: TextInputType.number,
                    length: 4,
                    onCompleted: (String value) {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 57.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88),
              child: Center(
                child: ButtonWidget(
                  height: 51.h,
                  background: const Color(0xffff748c),
                  textColor: Colors.white,
                  text: Text(
                    'Continue',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MainScreen.route());
                  },
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
