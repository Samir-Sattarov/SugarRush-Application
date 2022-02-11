import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/auth/create_account.dart';
import 'package:flutter_application_1/presentation/utils/form_validator.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/button_form.dart';
import 'package:flutter_application_1/presentation/widget/sheet/forgot_password.dart';
import 'package:flutter_application_1/presentation/widget/sheet/reset_password.dart';
import 'package:flutter_application_1/presentation/widget/subtitle.dart';
import 'package:flutter_application_1/presentation/widget/text_form_field.dart';
import 'package:flutter_application_1/presentation/widget/title.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  static route() => MaterialPageRoute(builder: (context) => LoginScreen());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 346.w,
                      child: TextFormFieldWidget(
                        inputType: TextInputType.emailAddress,
                        imagePreffix: StaticImages.iIconEmailDark,
                        controller: _loginTextController,
                        labelText: 'Email',
                        isPasswordField: false,
                        validator: FormValidator.validateEmail,
                        color: const Color(0xff2E2E2E),
                      ),
                    ),
                    SizedBox(height: 41.h),
                    SizedBox(
                      width: 343.w,
                      child: TextFormFieldWidget(
                        imagePreffix: StaticImages.iIconLocker,
                        labelText: 'Password',
                        controller: _passwordTextController,
                        isPasswordField: true,
                        color: const Color(0xff2E2E2E),
                        validator: FormValidator.validatorPassword,
                      ),
                    ),
                  ],
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
                  child: FormButtonWidget(
                    background: const Color(0xffFF748C),
                    formKey: _formKey,
                    height: 51,
                    mainButton: true,
                    text: Text(
                      'Login',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    weight: double.infinity,
                    textColor: Colors.white,
                    onPressed: () {},
                  )),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, CreateAccountScreen.route());
                    },
                    child: Text(
                      'Sing Up',
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
