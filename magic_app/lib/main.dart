import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic_App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF536878),
            secondary: const Color(0xFFFFB627),
          ),
          tabBarTheme: TabBarTheme(
            unselectedLabelStyle: GoogleFonts.openSans(),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            labelStyle: GoogleFonts.openSans(fontWeight: FontWeight.bold),
            indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: Color(0xFFFFB627))),
          ),
          textTheme:
              GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)),
      home: const HomePage(),
    );
  }
}
