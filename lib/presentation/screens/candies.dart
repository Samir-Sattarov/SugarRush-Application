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
      body: Container(
        width: MediaQuery.of(context).size.width.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFFD5DC), Colors.white],
            begin: Alignment.topRight,
            end: Alignment.center,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 140,
                ),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  padding: const EdgeInsets.all(20),
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
      ),
    );
  }
}
