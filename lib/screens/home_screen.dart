import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hadith_app/screens/hadith_screen.dart';
import 'package:hadith_app/utils/colorApp.dart';
import 'package:hadith_app/utils/strings.dart';

import 'audio_hadith_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/svg/background.svg",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                SvgPicture.asset("assets/svg/logo.svg"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextApp.topHomeScreen,
                    TextApp.headerHomeScreen,
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => HadithScreen()));
                        },
                        child: myCard(
                            ColorApp.primary,
                            ColorApp.darkPrimary,
                            TextApp.bookOneScreen,
                            "assets/quran.png",
                            'assets/svg/one.svg')),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => AudioHadithScreen()));
                        },
                        child: myCard(
                            ColorApp.yellow,
                            ColorApp.darkRed,
                            TextApp.bookTwoScreen,
                            "assets/play.png",
                            'assets/svg/twoo.svg')),
                    myCard(
                        ColorApp.violent,
                        ColorApp.darkRed,
                        TextApp.bookThreeScreen,
                        "assets/save-instagram.png",
                        "assets/svg/three.svg")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget myCard(
  Color color1,
  color2,
  Text text,
  path1,
  path2,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 48),
    child: Container(
        height: 117,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(10, 10), blurRadius: 40)
            ],
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
                begin: AlignmentDirectional.topEnd,
                end: AlignmentDirectional.bottomStart)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Image.asset(path1), text, SvgPicture.asset(path2)],
        )),
  );
}
