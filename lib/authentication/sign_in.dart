import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_counter_example/authentication/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../Provider/login_provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var currentUser = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Consumer(builder: (_, ref, watch){
          final loginProvider = ref.watch(logInProvider);

          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Text(
                //   'Please Sign In',
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 30.0),
                // ),

                Lottie.asset(
                  'assets/login.json',
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  onChanged: (val) {
                    loginProvider.email = val;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Please Enter Your Email',
                      labelText: 'Email Address',
                      filled: true,
                      fillColor: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  onChanged: (val) {
                    loginProvider.password = val;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Please Enter Your password',
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  )),
                ).onTap(() {
                  loginProvider.signIn(context);
                }),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account yet?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    const Text(
                      'Sign Up Here',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ).onTap(() => const SignUp().launch(context))
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
