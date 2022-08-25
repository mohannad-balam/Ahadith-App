import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadith_app/utils/colorApp.dart';

abstract class TextApp {
  static Text splashScreen = Text(
    "ألاربعون النوويه",
    style: GoogleFonts.tajawal(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
  );

  static Text topHomeScreen = Text(
    "ألاربعون النوويه",
    textDirection: TextDirection.rtl,
    style: GoogleFonts.tajawal(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
  );
  static Text headerHomeScreen = Text(
    "لحفظ وسماع الاحاديث النوويه",
    style: GoogleFonts.tajawal(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
  );

  static Text bookOneScreen = Text(
    'الأحاديث الأربعون',
    style: GoogleFonts.tajawal(fontSize: 22, color: ColorApp.offWhite),
  );
  static Text bookTwoScreen = Text(
    "ألأستماع للأحاديث",
    style: GoogleFonts.tajawal(fontSize: 22, color: ColorApp.offWhite),
  );
  static Text bookThreeScreen = Text(
    "(قريبًا)ألأحاديث المحفوظه",
    style: GoogleFonts.tajawal(fontSize: 22, color: ColorApp.offWhite),
  );

  static Text listen = Text(
    "الاستماع للأحاديث",
    style: GoogleFonts.tajawal(
        color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
  );
}
