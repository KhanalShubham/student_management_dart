import 'package:flutter/material.dart';
import 'package:student_course_management/view/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student Course Management",
      home: Splash(),
    );
  }
}