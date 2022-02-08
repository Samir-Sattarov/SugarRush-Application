import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/auth/create_account.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_application_1/presentation/widget/sheet/forgot_password.dart';
import 'package:flutter_application_1/presentation/widget/sheet/reset_password.dart';
import 'package:flutter_application_1/presentation/widget/sheet/verification_code.dart';
import 'package:flutter_application_1/presentation/widget/subtitle.dart';
import 'package:flutter_application_1/presentation/widget/textfield_main.dart';
import 'package:flutter_application_1/presentation/widget/textfield_second.dart';
import 'package:flutter_application_1/presentation/widget/title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static route() =>
      MaterialPageRoute(builder: (context) => const LoginScreen());
  @override
  Widget build(BuildContext context) {
    final _login = TextEditingController();
    final _password = TextEditingController();
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
              SizedBox(height: 75.h),
              SizedBox(
                height: 133.h,
                width: 179.w,
                child: SvgPicture.asset(StaticImages.iLogoMacaron),
              ),
              const TitleMain(text: 'Login'),
              SizedBox(height: 2.h),
              const SubTitle(text: 'Please sign in to continue'),
              SizedBox(height: 40.h),
              SizedBox(
                width: 346.w,
                child: TextFieldMainWidget(
                  labelText: 'williamblack@gmail.com',
                  image: StaticImages.iIconEmail,
                  controller: _login,
                  rootText: 'Email',
                ),
              ),
              SizedBox(height: 41.h),
              SizedBox(
                width: 343.w,
                child: TextFieldSecondWidget(
                  imagePreffix: StaticImages.iIconLocker,
                  imageSuffix: StaticImages.iIconEye,
                  labelText: 'Password',
                  controller: _password,
                  color: const Color(0xff2E2E2E),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      ResetPasswordModalBottomSheetWidget(context);
                    },
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.openSans(
                        color: const Color(0xffD87070),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ForgotPasswordModalBottomSheetWidget(context);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.openSans(
                        color: const Color(0xffD87070),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 37.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 87),
                child: ButtonWidget(
                  height: 51.h,
                  background: const Color(0xffFF748C),
                  textColor: Colors.white,
                  text: Text(
                    'Login',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    VerificationCodeModalBottomSheetWidget(context);
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, CreateAccountScreen.route());
                    },
                    child: Text(
                      'Sing Up',
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
                  GestureDetector(
                    onTap: () {},
                    child: const Image(
                      image: AssetImage(StaticImages.iIconGoogle),
                    ),
                  ),
                  SizedBox(width: 37.w),
                  GestureDetector(
                    onTap: () {},
                    child: const Image(
                      image: AssetImage(StaticImages.iIconFacebook),
                    ),
                  ),
                  SizedBox(width: 37.w),
                  GestureDetector(
                    onTap: () {},
                    child: const Image(
                      image: AssetImage(StaticImages.iIconTwitter),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
