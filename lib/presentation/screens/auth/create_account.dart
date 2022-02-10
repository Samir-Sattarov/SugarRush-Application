// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/auth/login_screen.dart';
import 'package:flutter_application_1/presentation/utils/form_validator.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_application_1/presentation/widget/sheet/verify_your_email.dart';
import 'package:flutter_application_1/presentation/widget/subtitle.dart';
import 'package:flutter_application_1/presentation/widget/text_form_field.dart';
import 'package:flutter_application_1/presentation/widget/title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateAccountScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => CreateAccountScreen());
  CreateAccountScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff383838),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100.h),
              const TitleMain(text: 'Create Account'),
              SizedBox(height: 2.h),
              const SubTitle(text: 'Please fill the input below here.'),
              SizedBox(height: 27.h),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    SizedBox(
                      width: 343.w,
                      child: TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconPerson,
                        controller: TextEditingController(),
                        labelText: 'Full Name',
                        color: const Color(0xff2E2E2E),
                        validator: (String? value) {},
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      height: 55.h,
                      child: TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconPhone,
                        labelText: 'Phone',
                        color: const Color(0xff2E2E2E),
                        controller: TextEditingController(),
                        validator: (String? value) {},
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconEmailDark,
                        labelText: 'Email',
                        color: const Color(0xff2E2E2E),
                        controller: TextEditingController(),
                        validator: FormValidator.validateEmail,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: TextFormFieldWidget(
                        labelText: 'Password (Atleast 6 characters)',
                        imagePreffix: StaticImages.iIconLocker,
                        controller: TextEditingController(),
                        color: const Color(0xff2E2E2E),
                        isPasswordField: true,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: TextFormFieldWidget(
                        labelText: 'Confirm Password',
                        isPasswordField: true,
                        imagePreffix: StaticImages.iIconLocker,
                        controller: TextEditingController(),
                        color: const Color(0xff2E2E2E),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 87.w),
                child: ButtonWidget(
                  height: 51.h,
                  background: const Color(0xffFF748C),
                  textColor: Colors.white,
                  text: Text(
                    'Sing Up',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    VerifyEmailModalBottomSheetWidget(context);
                  },
                ),
              ),
              SizedBox(height: 26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(LoginScreen.route());
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.openSans(
                        color: const Color(0xffD87070),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.h),
              Text(
                'Or connect with',
                style: GoogleFonts.openSans(
                  color: const Color(0xff828282),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      launch('https://www.google.com/');
                    },
                    child: const Image(
                      image: AssetImage(StaticImages.iIconGoogle),
                    ),
                  ),
                  SizedBox(width: 37.w),
                  GestureDetector(
                    onTap: () {
                      launch('https://www.facebook.com/');
                    },
                    child: const Image(
                      image: AssetImage(StaticImages.iIconFacebook),
                    ),
                  ),
                  SizedBox(width: 37.w),
                  GestureDetector(
                    onTap: () {
                      launch('https://www.twitter.com/');
                    },
                    child: const Image(
                      image: AssetImage(StaticImages.iIconTwitter),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
