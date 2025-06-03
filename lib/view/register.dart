import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:student_course_management/view/bottom_navigation_bar_example.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final nameController=TextEditingController();
  final gmailController=TextEditingController();
  final phoneController=TextEditingController();
  final passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      suffix: Icon(Icons.person),
                      labelText: "Enter your name",
                      border: OutlineInputBorder(),
                    ),
                    validator:(value) => 
                    value==null ||value.isEmpty?
                      "Enter your name":null,
                ),
                Gap(20),
                TextFormField(
                  controller: gmailController,
                  decoration: InputDecoration(
                      suffix: Icon(Icons.person),
                      labelText: "Enter your gmail",
                      border: OutlineInputBorder(),
                    ),
                    validator:(value) => 
                    value==null ||value.isEmpty?
                      "Enter your gmail":null,
                    ),
                    Gap(20),
                     TextFormField(
                      controller: phoneController,
                  decoration: InputDecoration(
                      suffix: Icon(Icons.person),
                      labelText: "Enter your phone number",
                      border: OutlineInputBorder(),
                    ),
                    validator:(value) => 
                    value==null ||value.isEmpty?
                      "Enter your Phone number":null,
                    ),
                    Gap(20),
                     TextFormField(
                      controller: passwordController,
                  decoration: InputDecoration(
                      suffix: Icon(Icons.person),
                      labelText: "Enter your password",
                      border: OutlineInputBorder(),
                    ),
                    validator:(value) => 
                    value==null ||value.isEmpty?
                      "Enter your password":null,
                    ),
                    Gap(50),
                    ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarExample()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    ),
                     child: Text("Register"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}