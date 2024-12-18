import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: h / 4, right: w / 20, left: w / 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            cursorColor: const Color(0xFFE2BE7F),
            cursorWidth: 3,
            style: GoogleFonts.elMessiri(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              labelText: "Sura Name",
              fillColor: Color(0xB3202020),
              filled: true,
              labelStyle: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              prefixIcon: Image.asset(
                "assets/images/quran.png",
                color: Color(0xFFE2BE7F),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFE2BE7F),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFE2BE7F), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFE2BE7F), width: 2),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Most Recently ",
            textAlign: TextAlign.start,
            style: GoogleFonts.elMessiri(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
