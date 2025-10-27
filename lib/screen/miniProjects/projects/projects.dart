import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectItem(
                title: "SMS verification using Go",
                description: "RESTful API in Go integrating Twilio Verify service for SMS-based OTP authentication",
                link: "https://github.com/rohitchauhanrc/sms-verification-using-go",
              ),
              ProjectItem(
                title: "Cinemania",
                description: "A movie app built using Flutter and TMDB API.",
                link: "https://github.com/rohitchauhanrc/movie_search_app",
              ),
              ProjectItem(
                title: "Instagram Clone",
                description: "A fully functional Instagram clone using Flutter.",
                link: "https://github.com/rohitchauhanrc/InstagramClone",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  const ProjectItem({
    Key? key,
    required this.title,
    required this.description,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => _launchURL(link),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.code, size: 40, color: Colors.blueAccent),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () => _launchURL(link),
                        icon: const Icon(Icons.open_in_new, color: Colors.blueAccent),
                        tooltip: "View Project",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
