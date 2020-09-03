import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_page/Constants/sizeConfig.dart';


final kHeadText1 = GoogleFonts.mcLaren(
    fontSize: SizeConfig.safeBlockHorizontal * 2.08,
    color: Colors.amber,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1.9, 1.9),
        blurRadius: 3.0,
        color: Colors.amberAccent,
      ),
    ],
  );

final kHeadText2 = GoogleFonts.lato(
    fontSize: SizeConfig.safeBlockVertical * 2.933,
    color: Colors.tealAccent
);

final kHeadText3 = GoogleFonts.lato(
  fontSize: SizeConfig.safeBlockVertical * 2.66,
  color: Colors.black
);

final kHeadText4 = GoogleFonts.lato(
    fontSize: SizeConfig.safeBlockVertical * 2.4,
    color: Colors.black
);

final kHeadText5 = GoogleFonts.lato(
    fontSize: SizeConfig.safeBlockVertical * 2.66,
    color: Colors.white
);

final kNameStyle = GoogleFonts.lato(
  fontSize: SizeConfig.safeBlockHorizontal * 2.08,
  color:Colors.tealAccent
);

final kDateStyle=GoogleFonts.lato(
    fontSize: SizeConfig.safeBlockVertical * 2.08,
    color:Colors.black
);