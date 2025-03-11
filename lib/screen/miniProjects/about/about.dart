import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../consts/data.dart';
import '../../../providers/current_state.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xfff5f4e7),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                    child: ClipOval(
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          "assets/images/profilePicture.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                ),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Hi, I am Rohit Chauhan",
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  introduction,
                  style: GoogleFonts.openSans(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ).animate().fadeIn(duration: const Duration(milliseconds: 500)),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Provider.of<CurrentState>(context, listen: false)
                          .launchInBrowser(resumeLink);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 18),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                    ),
                    child: const Text("Download CV"),
                  )
                      .animate()
                      .scale(duration: const Duration(milliseconds: 200)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
