import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsModel.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectModel.dart';

class Constants {
  static const portfolioStr = 'Welcome to my portfolio!';
  static const name = 'Nayana Bhat M';
  static const fontFamilyKaushanScript = 'KaushanScript';

  // Screen names
  static const String education = '/Education';
  static const String experience = '/Experience';
  static const String skills = '/Skills';
  static const String projects = '/Projects';
  static const String profile = '/ProfileDetails';

  static const String educationImagePath = 'assets/images/education.jpg';
  static const String experienceImagePath = 'assets/images/experience.jpg';
  static const String skillsImagesPath = 'assets/images/skills.jpg';
  static const String projectsImagePath = 'assets/images/projects.jpg';
  static const String profileImagePath = 'assets/images/profilepic.PNG';

  static const String myPicImagePath = 'assets/images/profile_pic.jpeg';

  static const String wrenchImagePath = 'assets/images/wrench.png';
  static const String wisherImagePath = 'assets/images/wisher.png';
  static const String status_keeperImagePath =
      'assets/images/status_keeper.png';
  static const String editorImagePath = 'assets/images/text_editor.png';

  static const String githubLink = 'https://github.com/nayanabhatm/';
  static const String linkedIn = 'https://www.linkedin.com/in/nayana-bhat-m/';
  static const String twitter = 'https://twitter.com/Nayana33049232/';

  static const String educationDetails = 'EDUCATION DETAILS';
  static const String collegeName = 'College Name';
  static const String sit =
      'Siddaganga Institue Of Technology, Tumkur, Karnataka, India';
  static const String branch = 'Branch';
  static const String cse = 'Computer Science and Engineering';
  static const String batch = 'Batch';
  static const String batchDate = 'August 2011 - June 2015';
  static const String cgpa = 'CGPA';
  static const String cgpaNumber = '9.5';
  static const String getRank = 'GATE Rank';
  static const String rank = '1600';

  static const String otherHobbies = 'My Favorite Pastimes: ';
  static const String myHobbies =
      'Arts And Crafts, Playing Badminton, Yoga and Meditation, Travelling and Singing ';
  static const String myArtWorks = 'Few of my artworks:)';
  static const String artWork1 = 'assets/images/work1.jpg';
  static const String artWork2 = 'assets/images/work2.jpg';
  static const String artWork3 = 'assets/images/work3.jpg';
  static const String artWork4 = 'assets/images/work4.jpeg';
  static const String artWork5 = 'assets/images/work5.jpeg';

  static const String moreProjects = 'More Projects';

  static const String softwareEng = 'Software Engineer';
  static const String intern = 'Intern';

  static const String wrenchCmp = 'Wrench';
  static const String infaCmp = 'Informatica';
  static const String aricentCmp = 'Aricent';

  static const String wrenchTenure = '(Sep 2020 - Present)';
  static const String infaTenure = '(Oct 2015 - Aug 2020)';
  static const String aricentTenure = '(July 2014 - Aug 2014)';

  static const String softwareEngineerStr =
      'Hello there! I am Nayana Bhat, a Software Engineer with 2 years of experience in Flutter development and a total of 6 years of experience in the IT industry. I am passionate about building projects that can solve real-world problems using relevant technologies. I am currently working as a Flutter developer in a startup called Wrench at Bangalore, India.';

  // Work experience
  static const List<String> wrench = [
    'Developed Fleet management Flutter app to help fleet users book a service for their cars and other automobiles.',
    'Developed Technician app in Flutter to help all technicians at Wrench to service the requests from users/fleet.',
    'Developed Wrench Dashboard WebPage using Flutter to show the consolidated data of the requested and processed services.'
  ];

  static const List<String> infa = [
    'Designed, Developed and Integrated complex dataflows using Informatica Cloud Data Integration and Informatica Cloud Application Integration Tools.',
    'Independently performed the complex troubleshooting, root-cause analysis and solution development.',
    'Helped several clients to adopt more cloud services which inturn improved the agility and reduced the costs.'
  ];

  static const List<String> aricent = [
    'Assisted in migration of the entire project from one version to another version.',
    'Collaborated with the team and contributed in automating many things in the project.'
  ];

  static const String experienceTitle = 'WORK EXPERIENCE';
  static const String projectsTitle = 'PROJECTS';
  static const String skillsTitle = 'SKILLS';
  static const String educationTitle = 'EDUCATION';
  static const String aboutMeTitle = 'ABOUT ME';
  static const String fluency = 'Fluency';
  static const String technologies = 'Technologies';

  static List<ProjectModel> projectsList = <ProjectModel>[
    ProjectModel(
      projectName: 'Wrench Fleet App',
      projectDescription:
          'A Flutter app developed as a part of my work to help fleet users manage maintenance and repair tasks, schedule services at their location and convenience, and maximize vehicle uptime.',
      projectLink:
          'https://play.google.com/store/apps/details?id=com.wrench.wrench_mobile_app',
      imagePath: Constants.wrenchImagePath,
    ),
    ProjectModel(
      projectName: 'Wrench Technician App',
      projectDescription:
          'A Flutter app developed as a part of my work to help all technicians at Wrench to manage their schedule, view jobs, and update their profile.',
      projectLink:
          'https://play.google.com/store/apps/details?id=com.wrench.mechanic',
      imagePath: Constants.wrenchImagePath,
    ),
    ProjectModel(
      projectName: 'Wisher',
      projectDescription:
          'An App developed using Flutter with Firebase storage as the database. '
          'This app lets the user customize their wishes and share it with others.',
      projectLink:
          'https://play.google.com/store/apps/details?id=com.nbhatm.wisher',
      imagePath: Constants.wisherImagePath,
    ),
    ProjectModel(
      projectName: 'Status Keeper',
      projectDescription:
          'Flutter App developed to share and save the whatsapp statuses and videos',
      projectLink: 'https://github.com/nayanabhatm/status_keeper',
      imagePath: Constants.status_keeperImagePath,
    ),
    ProjectModel(
      projectName: 'Text Editor',
      projectDescription:
          'Text Editor developed using flutter with several functionalities',
      projectLink: 'https://github.com/nayanabhatm/texteditor',
      imagePath: Constants.editorImagePath,
    ),
  ];

  static List<ProfileDetailsModel> profileDetails = [
    ProfileDetailsModel(
      iconName: FontAwesomeIcons.envelope,
      details: "nayana.bhat.m@gmail.com",
      delayDuration: 300,
    ),
    ProfileDetailsModel(
      iconName: FontAwesomeIcons.mapMarkerAlt,
      details: "Bangalore, Karnataka",
      delayDuration: 500,
    ),
    // ProfileDetailsModel(
    //   iconName: FontAwesomeIcons.solidUserCircle,
    //   details:
    //       "Creative, Energetic, Hardworking, Honest, Persistent, Motivated, Organised, Reliable, Team Player, Innovative, Committed",
    //   delayDuration: 1100,
    // ),
    ProfileDetailsModel(
      iconName: FontAwesomeIcons.pencilRuler,
      details: '${Constants.otherHobbies} ${Constants.myHobbies}',
      delayDuration: 1300,
    ),
  ];
}
