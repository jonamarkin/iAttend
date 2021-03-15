// @dart=2.9
import 'package:flutter/material.dart';
import 'package:iAttend/business_logic/constants/appconstants.dart';
import 'package:iAttend/ui/views/login/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iAttend',
      theme: ThemeData(
        //cardColor: Colors.whit,
        primarySwatch: backColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LoginPage(),
    );
  }
}
