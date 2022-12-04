import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../authentication/sign_in.dart';
import '../change_password.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Future <SignIn> _signOut()  async{
    await FirebaseAuth.instance.signOut();

    return   const SignIn();
  }
  
  // Future<void> _signOut() async {
  //   await FirebaseAuth.instance.signOut();
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.lock,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: Text(
                  "Two-Factor Authentication ",
                  style: TextStyle(
                      color: Color(0xff181D27), fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Further secure your account for safety ",
                  style: TextStyle(
                    color: Color(0xff181D27),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChangePassword()),
                  );
                },
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20.0,
                    child: Icon(
                      Icons.lock,
                      color: Color(0xff0601B4),
                    ),
                  ),
                  title: Text(
                    "Password Change ",
                    style: TextStyle(
                        color: Color(0xff181D27), fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    " Change Your Password",
                    style: TextStyle(
                      color: Color(0xff181D27),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()=>_signOut(),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20.0,
                    child: Icon(
                      Icons.login,
                      color: Color(0xff0601B4),
                    ),
                  ),
                  title: Text(
                    "Log out ",
                    style: TextStyle(
                        color: Color(0xff181D27), fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Further secure your account for safety",
                    style: TextStyle(
                      color: Color(0xff181D27),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "More ",
                  style: TextStyle(
                      color: Color(0xff181D27), fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.notification_important_rounded,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: Text(
                  "Help & Support ",
                  style: TextStyle(
                      color: Color(0xff181D27), fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xff0601B4),
                  ),
                ),
                title: Text(
                  "About App",
                  style: TextStyle(
                      color: Color(0xff181D27), fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
