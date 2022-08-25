import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadith_app/db/database.dart';
import 'package:hadith_app/models/hadith.dart';
import 'package:hadith_app/screens/local_audio.dart';
import 'package:hadith_app/utils/colorApp.dart';
import 'package:hadith_app/utils/strings.dart';

class AudioHadithScreen extends StatelessWidget {
  const AudioHadithScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/svg/background.svg',
                  width: double.infinity,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(""),
                        SvgPicture.asset('assets/svg/logo.svg'),
                        SvgPicture.asset('assets/svg/arrow-right.svg'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextApp.listen,
                      ],
                    ),
                  ],
                )
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/svg/background.svg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                FutureBuilder<List<Hadith>>(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        itemCount: snapshot.data.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          maxCrossAxisExtent: 300,
                        ),
                        itemBuilder: (context, index) {
                          Hadith hadith = snapshot.data[index];
                          return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LocalAudio(
                                          hadith: hadith,
                                          localAudioPath:
                                              'audio/' + hadith.audio,
                                        )));
                              },
                              child: ayah(hadith.key, hadith.hadithName));
                        },
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                  future: Mydata.getAlldata(),
                ),
              ],
            ),
            flex: 3,
          )
        ],
      ),
    );
  }

  Widget ayah(String key, name) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset("assets/img.png"),
        SvgPicture.asset("assets/svg/grey.svg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              key,
              style: GoogleFonts.tajawal(
                fontSize: 16,
                color: ColorApp.yellow,
              ),
            ),
            Text(
              name,
              style: GoogleFonts.tajawal(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: ColorApp.yellow,
              ),
              textScaleFactor: .5,
            ),
          ],
        )
      ],
    );
  }
}
