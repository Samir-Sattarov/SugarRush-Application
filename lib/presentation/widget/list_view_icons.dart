import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/utils/data_classes.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewIconsWidget extends StatelessWidget {
  final ListIcons data;
  const ListViewIconsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 50,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image(
              image: AssetImage(data.image),
            ),
          ),
          Text(
            data.text,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
