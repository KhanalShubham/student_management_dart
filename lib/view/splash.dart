import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:student_course_management/view/login.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/student.png',
              
              height: 160,
              width: 290,
              ),
              SizedBox(
                height: 150,
                width: 350,
                child: Lottie.asset(
                  "assets/lottie/loading.json"
                  
                ),
              )
              
            ],
          
          ),
      ), 
        nextScreen:Login(),
        duration: 5000,
        splashIconSize: 250,
        splashTransition: SplashTransition.fadeTransition,
        
      
    );
  }
}