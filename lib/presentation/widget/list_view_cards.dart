import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/candies.dart';
import 'package:flutter_application_1/presentation/utils/data_classes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewCardsWidget extends StatelessWidget {
  final ListCards data;
  const ListViewCardsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30),
      height: 100.h,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(CandiesScreen.route());
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(data.image),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  width: 100.w,
                  height: 100.h,
                ),
                Positioned(
                  top: 11,
                  child: Container(
                    height: 19,
                    color: Colors.white,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          '20% off'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            data.text.toUpperCase(),
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
