import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/customized_appbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: const CustomAppBar(
        title: 'About Me',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 30, right: 30, bottom: 50),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'About Me',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 34,
                      color: const Color(0xffAA81F3),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                        'Software Enginner, Focusing on using Flutter to create a cross platfrom app',
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
                        'Skilled in developing hybrid mobile apps and Cross-platfrom solutions using flutter',
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
                        'Currently in the on going HNG internship.',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Skill Set',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 34,
                      color: const Color(0xffAA81F3),
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            SkillCard(
                              imageUrl: 'lib/images/dart_logo.png',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SkillCard(
                              imageUrl: 'lib/images/javascript_logo.png',
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 50.0),
                              child: SkillCard(
                                imageUrl: 'lib/images/flutter_logo.png',
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SkillCard(
                              imageUrl: 'lib/images/css_logo.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: SkillCard(
                        imageUrl: 'lib/images/html_logo.png',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  const SkillCard({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffAA81F3),
            blurRadius: 25.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Image.asset(imageUrl),
    );
  }
}
