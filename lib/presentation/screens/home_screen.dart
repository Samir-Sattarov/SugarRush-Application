import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/data_list.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_application_1/presentation/widget/list_view_cards.dart';
import 'package:flutter_application_1/presentation/widget/list_view_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const HomeScreen());
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Popup()),
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 21.h),
              Container(
                padding: EdgeInsets.only(left: 30.w),
                width: 321.w,
                height: 52.h,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: items
                        .map(
                          (data) => ListViewIconsWidget(
                            data: data,
                          ),
                        )
                        .toList()),
              ),
              SizedBox(height: 27.h),
              Center(
                child: SizedBox(
                  width: 321.w,
                  child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage(StaticImages.iOfferBox),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.w),
                child: Text(
                  'Top Pick For You',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Center(
                child: SizedBox(
                  width: 321,
                  height: 148.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: itemsCards
                        .map((data) => ListViewCardsWidget(data: data))
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.only(left: 30.w),
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage(StaticImages.iDarkChoco),
                    ),
                    Image(
                      image: AssetImage(StaticImages.iLiveForSugar),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Popup extends StatelessWidget {
  const Popup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: const Color(0xFFFF91A4),
      offset: const Offset(10, 50),
      onSelected: (val) {},
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          child: Row(
            children: [
              const Image(
                image: AssetImage(StaticImages.iShoppingBag),
              ),
              SizedBox(width: 33.w),
              Text(
                'My Orders',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Image(
                image: AssetImage(StaticImages.iSettings),
              ),
              SizedBox(width: 33.w),
              Text(
                'Settings',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Image(
                image: AssetImage(StaticImages.iMousePointer),
              ),
              SizedBox(width: 33.w),
              Text(
                'Stores Near You',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Image(
                image: AssetImage(
                  StaticImages.iFileText,
                ),
              ),
              SizedBox(width: 33.w),
              Text(
                'Feedback',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Image(
                image: AssetImage(StaticImages.iLogOut),
              ),
              SizedBox(width: 33.w),
              Text(
                'Log Out',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
      icon: const Image(
        image: AssetImage(StaticImages.iIconMenu),
      ),
    );
  }
}
