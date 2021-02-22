library appconstants;

import 'package:flutter/material.dart';

const customback = 0xffe4ece4;

const customfontcolor = 0xff12271f;

const greenColor = Color(0xff8acac0);

const yellowColor = Color(0xffF5CE83);

const MaterialColor backColor = const MaterialColor(
  customback,
  const <int, Color>{
    50: const Color(0xffbfc8c6),
    100: const Color(0xffe4ece4),
    200: const Color(0xffabb7b3),
    300: const Color(0xff87938f),
    400: const Color(0xffe4ece4),
    500: const Color(0xffe4ece4),
    600: const Color(0xffe4ece4),
    700: const Color(0xffe4ece4),
    800: const Color(0xffe4ece4),
    900: const Color(0xffe4ece4),
  },
);

const MaterialColor fontColor = const MaterialColor(
  customfontcolor,
  const <int, Color>{
    50: const Color(0xff12271f),
    100: const Color(0xff12271f),
    200: const Color(0xff12271f),
    300: const Color(0xff12271f),
    400: const Color(0xff12271f),
    500: const Color(0xff12271f),
    600: const Color(0xff12271f),
    700: const Color(0xff12271f),
    800: const Color(0xff12271f),
    900: const Color(0xff12271f),
  },
);

//Bottom sheet code

// showBarModalBottomSheet(
//                       expand: false,
//                       context: context,
//                       backgroundColor: Colors.transparent,
//                       builder: (context) => Container(
//                         color: Colors.transparent,
//                         height: MediaQuery.of(context).size.height * 0.3,
//                         child: Column(
//                           children: [
//                             ListTile(
//                               title: Text(
//                                 "Filter By",
//                                 style: GoogleFonts.lato(
//                                   textStyle:
//                                       Theme.of(context).textTheme.headline6,
//                                   fontSize: 22,
//                                   color: fontColor,
//                                   fontWeight: FontWeight.bold,
//                                   //fontStyle: FontStyle.italic,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: ListView(
//                                 padding: EdgeInsets.all(
//                                   15,
//                                 ),
//                                 children: [
//                                   ListTile(
//                                     selectedTileColor: Color(0xffd3d3d3),
//                                     //selected: true,

//                                     onTap: () {},
//                                     leading: Icon(
//                                       Icons.accessible_outlined,
//                                     ),
//                                     title: Text(
//                                       "Present",
//                                       style: GoogleFonts.lato(
//                                         textStyle: Theme.of(context)
//                                             .textTheme
//                                             .headline3,
//                                         fontSize: 18,
//                                         color: Colors.blueGrey,
//                                         fontWeight: FontWeight.bold,
//                                         //fontStyle: FontStyle.italic,
//                                       ),
//                                     ),
//                                   ),
//                                   ListTile(
//                                     selectedTileColor: Color(0xffd3d3d3),
//                                     //selected: true,

//                                     onTap: () {},
//                                     leading: Icon(
//                                       Icons.accessible_outlined,
//                                     ),
//                                     title: Text(
//                                       "Absent",
//                                       style: GoogleFonts.lato(
//                                         textStyle: Theme.of(context)
//                                             .textTheme
//                                             .headline3,
//                                         fontSize: 18,
//                                         color: Colors.blueGrey,
//                                         fontWeight: FontWeight.bold,
//                                         //fontStyle: FontStyle.italic,
//                                       ),
//                                     ),
//                                   ),
//                                   ListTile(
//                                     selectedTileColor: Color(0xffd3d3d3),
//                                     //selected: true,

//                                     onTap: () {},
//                                     leading: Icon(
//                                       Icons.person,
//                                     ),
//                                     title: Text(
//                                       "Permitted",
//                                       style: GoogleFonts.lato(
//                                         textStyle: Theme.of(context)
//                                             .textTheme
//                                             .headline3,
//                                         fontSize: 18,
//                                         color: Colors.blueGrey,
//                                         fontWeight: FontWeight.bold,
//                                         //fontStyle: FontStyle.italic,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
