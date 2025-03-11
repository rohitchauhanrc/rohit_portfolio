import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:rohit_portfolio/screen/miniProjects/skills/skills.dart';
import '../models/app_model.dart';
import '../models/color_model.dart';
import '../models/device_model.dart';
import '../models/experience_model.dart';
import '../models/skill_model.dart';
import '../screen/miniProjects/about/about.dart';
import '../screen/miniProjects/education/education.dart';
import '../screen/miniProjects/experience/experience.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/miniProjects/projects/projects.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
      title: "About",
      color: Colors.white,
      icon: Icons.person,
      screen: const AboutMe()),
  AppModel(
    title: "Projects",
    color: Colors.white,
    icon: Icons.work,
    screen: const Projects(),
  ),
  AppModel(
      title: "Skills",
      color: Colors.white,
      icon: Icons.ac_unit_rounded,
      screen: const Skills()),
  AppModel(
      title: "Experience",
      color: Colors.white,
      icon: FontAwesomeIcons.idBadge,
      screen: const Experience()),
  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
  AppModel(
      title: "Youtube",
      assetPath: "assets/icons/youtube.png",
      color: Colors.white,
      link: youtubeChannel,
      iconSize: 1),
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.png",
    color: Colors.white,
    link: linkedIn,
  ),
  AppModel(
      title: "X",
      assetPath: "assets/icons/x.jpg",
      color: Colors.white,
      link: twitter,
      iconSize: 0.5
  ),

  AppModel(
      title: "Github",
      assetPath: "assets/icons/github.png",
      color: Colors.white,
      link: github,
      iconSize: 1),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Bhopal, India",
    title: 'Electronics and Communication',
    company: 'University Institute of Technology RGPV',
    startDate: 'November 2022',
    endDate: 'Present',
    bulletPoints: [
      "Engineer with a passion for mobile development. I've actively applied my skills in projects leveraging Flutter, Firebase, and other relevant technologies.",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Gwalior, India",
    title: 'Senior Secondary',
    company: "Kiddy's Corner Higher Secondary School",
    startDate: 'June 2020',
    endDate: 'June 2022',
    bulletPoints: [
      'Actively participated in extracurricular activities such as debates and conferences, which fostered my communication skills, confidence.',
    ],
  ),
];

List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Bhopal, India",
    title: 'App Developer',
    company: 'Asper',
    startDate: 'Jan 2023',
    endDate: 'Jan 2024',
    bulletPoints: [
      "Developed various applications using Flutter and Dart, demonstrating quick learning of new technologies.",
      "Self-initiated projects and demonstrated strong self-motivation throughout the development process.",
    ],
  ),
  JobExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'App Developer',
    company: 'App Genesis Soft Solutions Pvt Ltd.',
    startDate: 'Aug 2024',
    endDate: 'Oct 2024',
    bulletPoints: [
      "Worked on a Learning Management System project, efficiently converting Figma designs into functional mobile applications",
      "Took initiative in learning new technologies and applying them to the project, demonstrating adaptability and a strong commitment.",
    ],
  ),
];

const String youtubeChannel = "https://www.youtube.com/@RohitChauhanReal";
const String linkedIn = "https://www.linkedin.com/in/rohitchauhanrc/";
const String github = "https://github.com/rohitchauhanrc";
const String twitter = "https://x.com/_RohitChauhan__";
const String resumeLink =
    "https://drive.google.com/file/d/1FVd1bbf8_lp1V8Yfm2SoWmUriw0NAu30/view?usp=sharing";
const String email = "rohitchauhanreal@gmail.com";
String introduction =
    "Welcome to website, I am a passionate and results-driven Software Developer with expertise in mobile and web development. With hands-on experience in Flutter, React, and modern web technologies, I have successfully built and deployed scalable applications. My strong foundation in data structures, algorithms, and problem-solving allows me to write efficient and optimized code. I am always eager to learn new technologies and contribute to impactful projects." +
        "Let's connect and build something great! 🚀";

List<SkillsModel> skills = [
  SkillsModel(
    skillName: "Python",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "C",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "C++",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "HTML",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "CSS",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "JavaScript",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Flutter",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Firestore",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "RESTful APIs",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Data Structures",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Algorithms",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Object-Oriented Programming (OOPs)",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "GitHub",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Figma",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "Android Studio",
    colorS: Colors.brown,
  ),
  SkillsModel(
    skillName: "VS Code",
    colorS: Colors.brown,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "English", colorS: Colors.black),
];
