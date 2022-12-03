import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_counter_example/student_list.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


import '../../authentication/sign_in.dart';
import '../bottom navigration/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var currentUser = FirebaseAuth.instance.currentUser;
  void checkUser() async{
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      if(currentUser != null){
        const BottomNav().launch(context,isNewTask: true);
      } else{
        const SignIn().launch(context,isNewTask: true);
      }
    });
  }

  @override
  void initState() {
    checkUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 70.0,
        child: Text('Students',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),),
    );
  }
}