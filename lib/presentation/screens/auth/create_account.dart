// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/auth/login_screen.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_application_1/presentation/widget/sheet/verify_your_email.dart';
import 'package:flutter_application_1/presentation/widget/subtitle.dart';
import 'package:flutter_application_1/presentation/widget/textfield_main.dart';
import 'package:flutter_application_1/presentation/widget/textfield_second.dart';
import 'package:flutter_application_1/presentation/widget/textfield_without_suffix.dart';
import 'package:flutter_application_1/presentation/widget/title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CreateAccountScreen());
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xff383838),
            child: Column(
              children: [
                SizedBox(height: 100.h),
                const TitleMain(text: 'Create Account'),
                SizedBox(height: 2.h),
                const SubTitle(text: 'Please fill the input below here.'),
                SizedBox(height: 27.h),
                SizedBox(
                  width: 343.w,
                  height: 50.h,
                  child: TextFieldMainWidget(
                    image: StaticImages.iIconPerson,
                    labelText: 'William Black',
                    controller: TextEditingController(),
                    rootText: 'Full Name',
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 343.w,
                  height: 50.h,
                  child: TextFieldWithoutWidget(
                    image: StaticImages.iIconPhone,
                    labelText: 'Phone',
                    color: const Color(0xff2E2E2E),
                    controller: TextEditingController(),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 343.w,
                  height: 50.h,
                  child: TextFieldWithoutWidget(
                    image: StaticImages.iIconEmailDark,
                    labelText: 'Email',
                    color: const Color(0xff2E2E2E),
                    controller: TextEditingController(),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 343.w,
                  height: 50.h,
                  child: TextFieldSecondWidget(
                    labelText: 'Password (Atleast 6 characters)',
                    imagePreffix: StaticImages.iIconLocker,
                    imageSuffix: StaticImages.iIconEye,
                    controller: TextEditingController(),
                    color: const Color(0xff2E2E2E),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 343.w,
                  height: 50.h,
                  child: TextFieldSecondWidget(
                    labelText: 'Confirm Password',
                    imagePreffix: StaticImages.iIconLocker,
                    imageSuffix: StaticImages.iIconEye,
                    controller: TextEditingController(),
                    color: const Color(0xff2E2E2E),
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
                      'Already have an account?',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(LoginScreen.route());
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.openSans(
                          color: const Color(0xffD87070),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        elevation: 0,
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
                    const Image(image: AssetImage(StaticImages.iIconGoogle)),
                    SizedBox(width: 37.w),
                    const Image(image: AssetImage(StaticImages.iIconFacebook)),
                    SizedBox(width: 37.w),
                    const Image(image: AssetImage(StaticImages.iIconTwitter)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
