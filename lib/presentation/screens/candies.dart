import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/data_list.dart';
import 'package:flutter_application_1/presentation/widget/cards.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CandiesScreen extends StatelessWidget {
  const CandiesScreen({Key? key}) : super(key: key);

  static route() =>
      MaterialPageRoute(builder: (context) => const CandiesScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Chocolates'.toUpperCase(),
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 356.h,
            width: MediaQuery.of(context).size.width.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(95),
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 213, 220, 10),
                  Color.fromRGBO(255, 213, 220, 10),
                  Color.fromARGB(68, 255, 213, 220),
                ],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 74,
                    left: 30,
                  ),
                  // child: GridView(
                  //   scrollDirection: Axis.vertical,
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3,
                  //     crossAxisSpacing: 5,
                  //     mainAxisSpacing: 5,
                  //   ),
                  //   children: itemsBuyCards
                  //       .map((data) => BuyCards(data: data))
                  //       .toList(),
                  //   padding: EdgeInsets.all(0),
                  // ),
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    primary: false,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 50,
                    crossAxisCount: 3,
                    children: itemsBuyCards
                        .map((data) => BuyCards(data: data))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
