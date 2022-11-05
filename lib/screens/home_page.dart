import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widgets/customized_appbar.dart';
import '../widgets/icon_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: const CustomAppBar(
        title: 'Resume',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Ogunwa Anthonia Chinasa',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 32.5,
                height: 1.5,
                fontWeight: FontWeight.w700,
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
              ),
            ),
            Container(
              height: 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xffAA81F3),
                    Color(0xffF0BB31),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Software Enginner, Focusing on using Flutter to create a cross platfrom app',
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(
                fontSize: 22,
                height: 1.4,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              height: 43,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconCard(
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Color(0xffAA81F3),
                    ),
                    onPressed: () {
                      print("Pressed");
                    },
                  ),
                ),
                IconCard(
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Color(0xffAA81F3),
                    ),
                    onPressed: () {
                      print("Pressed");
                    },
                  ),
                ),
                IconCard(
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Color(0xffAA81F3),
                    ),
                    onPressed: () {
                      print("Pressed");
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: navBar(currentIndex),
    );
  }

  BottomNavigationBar navBar(int currentIndex) {
    return BottomNavigationBar(
      backgroundColor: const Color(0x80F0BB31),
      selectedItemColor: const Color(0xffAA81F3),
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
          ),
          label: '',
        )
      ],
    );
  }
}
