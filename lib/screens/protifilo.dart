import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/widgets/customized_appbar.dart';
import 'package:video_player/video_player.dart';

class MyProtifilo extends StatelessWidget {
  const MyProtifilo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> paths = [
      "lib/video/flutter_ui.mp4",
      "lib/video/hng_pre_task.mp4",
      "lib/video/weather_app.mp4",
    ];
    return Scaffold(
      appBar: const CustomAppBar(title: 'What I Can Do'),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40.0,
          right: 40,
          left: 40,
        ),
        child: Column(children: [
          Center(
            child: Text(
              'What Can I Do',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 34,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: <Color>[
                      Color(0xffF0BB31),
                      Color(0xffAA81F3),

                      //add more color here.
                    ],
                  ).createShader(
                    const Rect.fromLTWH(0.0, 0.0, 400.0, 50),
                  ),
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffAA81F3),
                  blurRadius: 25.0,
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  'I can Create  a customized and Impressive UI, this will the product to render very fast.',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'I have medium Knowledge of Git and github: Having me in your team you don\'t have to worry about me pushing a conflict code',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'I can work with Rest API.',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
