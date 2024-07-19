import 'package:flutter/material.dart';
import 'package:foodstoreapp/constants.dart';
import 'package:foodstoreapp/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FoodStoreApp());
}

class FoodStoreApp extends StatelessWidget {
  const FoodStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)),
      home: HomePage(),
    );
  }
}
