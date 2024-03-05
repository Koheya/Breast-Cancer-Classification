// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'package:breast_cancer_prediction/homePage.dart';
import 'package:breast_cancer_prediction/reset_password.dart';
import 'package:breast_cancer_prediction/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  
  String? email, password;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('images/background.jpg'),
              image: NetworkImage('https://img.freepik.com/premium-vector/pink-ribbon-breast-cancer-awareness-symbol_97886-2863.jpg?w=740'),
              opacity: 1,
              fit: BoxFit.cover,
            ),
          ),
          // color: Color(0xFFF7CCD6),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          email = value;
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                            // color: Color(0xFFF7B3C2),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (emailController.text.isEmpty) {
                            return "email must not be empty!";
                          }
                          bool foundDomain =
                              emailController.text.contains('.com');
                          bool foundSign = emailController.text.contains('@');
                          if (!foundDomain || !foundSign) {
                            return "account does not exist";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          password = value;
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            // color: Color(0xFFF7B3C2),
                          ),
                          suffixIcon: IconButton(
                            icon: isPasswordShow
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                    // color: Color(0xFFF7B3C2),
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                    // color: Color(0xFFF7B3C2),
                                  ),
                            onPressed: () {
                              setState(() {
                                isPasswordShow = !isPasswordShow;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        obscureText: isPasswordShow,
                        validator: (value) {
                          if (passwordController.text.trim().length < 6 &&
                              passwordController.text.trim().isNotEmpty) {
                            return "weak password!";
                          }
                          if (passwordController.text.isEmpty) {
                            return "password must not be empty!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 150,
                        // color: Colors.white.withOpacity(0.9) ,
                        child: MaterialButton(
                          disabledElevation: 5.0,
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                UserCredential user = await FirebaseAuth
                                    .instance
                                    .signInWithEmailAndPassword(
                                        email: email!, password: password!);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Success'),
                                  ),
                                );
                                Navigator.pushNamed(context, HomePage.id);
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'user-not-found') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'No user found for that email.')));
                                } else if (e.code == 'wrong-password') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Wrong password provided for that user.'),
                                    ),
                                  );
                                }
                              } catch (e) {
                                // ignore: avoid_print
                                print(e);
                              }
                            }
                            // print(emailController.text);
                            // print(passwordController.text);
                          },
                          child: const Text(
                            "login",
                            style: TextStyle(
                              color: Color(0xFFF7B3C2),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ForgetPassword.id);
                        },
                        child: const Text(
                          'Forget Password',
                          style: TextStyle(
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                              // ignore: unnecessary_string_escapes
                              "Don\'t have an Account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SignUp.id);
                              
                            },
                            child: const Text(
                              "SignUp",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: const [
                      //     Text(
                      //       "----",
                      //     ),
                      //     Text(
                      //       "Or Sign Up Using",
                      //     ),
                      //     Text(
                      //       "----",
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 30,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     IconButton(
                      //       onPressed: ()  {
                              
                      //         // final User? user = await _signInWithGoogle();
                      //         // if (user != null) {
                      //         //   // Navigate to another page if sign-in is successful.
                      //         //   Navigator.pushReplacementNamed(context, HomePage.id);
                      //         // } else {
                      //         //   ScaffoldMessenger.of(context).showSnackBar(
                      //         //     const SnackBar(content: Text('Sign in with Google failed')),
                      //         //   );
                      //         // }
                      //       },
                      //       icon: const Icon(
                      //         Icons.email,
                      //         size: 48,
                      //         // color: Color(0xFFF7B3C2),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 60,
                      //     ),
                      //     IconButton(
                      //       onPressed: () {},
                      //       icon: const Icon(
                      //         Icons.facebook,
                      //         size: 48,
                      //         // color: Color(0xFFF7B3C2),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 60,
                      //     ),
                      //     IconButton(
                      //       onPressed: () {},
                      //       icon: const Icon(
                      //         Icons.apple,
                      //         size: 48,
                      //         // color: Color(0xFFF7B3C2),
                      //       ),
                      //     ),
                      //   ],
                      // )
                      ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
