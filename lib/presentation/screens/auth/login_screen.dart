import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static route() =>
      MaterialPageRoute(builder: (context) => const LoginScreen());
  @override
  Widget build(BuildContext context) {
    var isView = true;

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
        child: Column(
          children: [
            SizedBox(height: 75.h),
            SizedBox(
              height: 133.h,
              width: 179.w,
              child: SvgPicture.asset(StaticImages.iLogoMacaron),
            ),
            Text(
              'Login',
              style: GoogleFonts.raleway(
                  fontSize: 36.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 2.h),
            Text(
              'Please sign in to continue',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
              ),
            ),
            SizedBox(height: 40.h),
            SizedBox(
              width: 343.w,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.mail_outline,
                    color: Color(0xffA5A5A5),
                  ),
                  enabled: true,
                  labelStyle: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  labelText: 'williamblack@gmail.com',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  filled: true,
                  fillColor: const Color(0xff494949),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 41.h),
            SizedBox(
              width: 343.w,
              child: TextFormField(
                obscureText: isView,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: const Image(
                      image: AssetImage(StaticImages.iIconLocker),
                    ),
                    onPressed: () {},
                  ),
                  suffixIcon: IconButton(
                    icon: const Image(
                      image: AssetImage(StaticImages.iIconEye),
                    ),
                    onPressed: () {
                      isView = false;
                    },
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  enabled: true,
                  labelStyle: GoogleFonts.openSans(
                    color: const Color(0xff666666),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color(0xff2E2E2E),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6)),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.openSans(
                      color: const Color(0xffD87070),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
              ],
            ),
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
                onPressed: () {},
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
                    Navigator.push(context, LoginScreen.route());
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
    );
  }
}
