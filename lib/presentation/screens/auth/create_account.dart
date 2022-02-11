// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/auth/login_screen.dart';
import 'package:flutter_application_1/presentation/utils/form_validator.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button_form.dart';
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
          scrollDirection: Axis.vertical,
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
                      child: const TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconPerson,
                        labelText: 'Full Name',
                        color: Color(0xff2E2E2E),
                        validator: FormValidator.validatorName,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: const TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconPhone,
                        labelText: 'Phone',
                        color: Color(0xff2E2E2E),
                        validator: FormValidator.empty,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: const TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconEmailDark,
                        labelText: 'Email',
                        color: Color(0xff2E2E2E),
                        validator: FormValidator.validateEmail,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: const TextFormFieldWidget(
                        labelText: 'Password (Atleast 6 characters)',
                        imagePreffix: StaticImages.iIconLocker,
                        color: Color(0xff2E2E2E),
                        isPasswordField: true,
                        validator: FormValidator.validatorPassword,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 343.w,
                      child: const TextFormFieldWidget(
                        labelText: 'Confirm Password',
                        isPasswordField: true,
                        imagePreffix: StaticImages.iIconLocker,
                        color: Color(0xff2E2E2E),
                        validator: FormValidator.validatorPassword,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 87.w),
                child: FormButtonWidget(
                  height: 51.h,
                  background: const Color(0xffFF748C),
                  formKey: _formKey,
                  weight: double.infinity,
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
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
