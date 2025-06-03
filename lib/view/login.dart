import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:student_course_management/view/bottom_navigation_bar_example.dart';
import 'package:student_course_management/view/register.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final nameController=TextEditingController();
  final passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Padding
      (
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children:[
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
              Gap(30),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  suffix: Icon(Icons.password),
                  labelText: "Enter your password",
                  border: OutlineInputBorder(),
          
                ),
                validator: (value) => value==null||value.isEmpty?"Enter your password":null,
              ),
              Gap(50),
              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Logged In successfully")),
                  );
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarExample()));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white
              ), child: Text("Login "),

              ),
              Gap(20),
              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ), 
              child: Text("Register"))
            
            ]
            
          ),
        ),
      ),
    
    );
  }
}
