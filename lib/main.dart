import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iattend/ui/auth/login.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ),
  );
  await GetStorage.init();
  runApp(
     const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iAttend',
      // darkTheme: Themes().darkTheme.copyWith(
      //       textTheme: GoogleFonts.poppinsTextTheme(
      //         ThemeData(brightness: Brightness.dark).textTheme,
      //       ),
      //     ),
      // theme: Themes().lightTheme.copyWith(
      //       textTheme: GoogleFonts.poppinsTextTheme(
      //         ThemeData(brightness: Brightness.light).textTheme,
      //       ),
      //     ),

      // themeMode: ThemeServices().getThemeMode(),
      home: Login(),
      // ),
    );
  }
}
