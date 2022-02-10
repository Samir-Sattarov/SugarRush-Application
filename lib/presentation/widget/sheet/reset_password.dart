// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/form_validator.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_application_1/presentation/widget/sheet/password_updated.dart';
import 'package:flutter_application_1/presentation/widget/text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> ResetPasswordModalBottomSheetWidget(BuildContext context) {
  return showModalBottomSheet(
    barrierColor: const Color.fromRGBO(255, 255, 255, 0.3),
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
                'Reset Password',
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
                  'Your identity has been verified! Set your new password.',
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
              child: SizedBox(width: 343.w, child: FormWidget()),
            ),
            SizedBox(height: 41.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88),
              child: Center(
                child: ButtonWidget(
                  height: 51.h,
                  background: const Color(0xffff748c),
                  textColor: Colors.white,
                  text: Text(
                    'Confirm Password',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    PasswordUpdatedModalBottomSheetWidget(context);
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

class FormWidget extends StatelessWidget {
  FormWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          TextFormFieldWidget(
            labelText: 'Password (Atleast 6 characters)',
            imagePreffix: StaticImages.iIconLocker,
            controller: TextEditingController(),
            color: const Color(0xffE4E4E4),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          SizedBox(height: 20.h),
          TextFormFieldWidget(
            labelText: 'Confirm Password',
            imagePreffix: StaticImages.iIconLocker,
            controller: TextEditingController(),
            color: const Color(0xffE4E4E4),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
