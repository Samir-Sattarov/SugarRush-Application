import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/auth/login_screen.dart';
import 'package:flutter_application_1/presentation/widget/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';

class SplashScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const SplashScreen());

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFF748C),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 148.h,
              width: 188.w,
              child: SvgPicture.asset(StaticImages.iLogo),
            ),
            SizedBox(height: 43.h),
            Column(
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'cravind sugar?'.toUpperCase(),
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  'Create an account and enjoy the sugar rush!',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 135.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: ButtonWidget(
                    height: 51.h,
                    background: const Color(0xffF19D9D),
                    textColor: Colors.white,
                    text: Text(
                      'Getting Started',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, LoginScreen.route());
                    },
                  ),
                ),
                SizedBox(height: 29.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).push(LoginScreen.route()),
                      child: Text(
                        'Login',
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
