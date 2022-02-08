import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/data_classes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyCards extends StatelessWidget {
  final BuyCardsList data;
  const BuyCards({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 92.w,
          height: 126.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(data.image),
              )),
        ),
        Positioned(
          top: 80.h,
          child: Container(
            width: 92.w,
            height: 46.h,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: -12,
          child: IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Positioned(
          top: -10,
          right: 12,
          child: IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
