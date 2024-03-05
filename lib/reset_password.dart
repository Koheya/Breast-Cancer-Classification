// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static String id = 'ForgetPassword';
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String? email;
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://img.freepik.com/premium-vector/pink-ribbon-breast-cancer-awareness-symbol_97886-2863.jpg?w=740'),
              // image: AssetImage('images/background.jpg'),
              opacity: 1,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Recieve an email to\nreset your password',
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 30,
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
                          try {
                            if (formKey.currentState!.validate()) {
                              await FirebaseAuth.instance
                                  .sendPasswordResetEmail(email: email!);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Password Reset Email Sent'),
                                ),
                              );
                            }
                          } on FirebaseAuthException catch (e) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('$e')));
                          }
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                            color: Color(0xFFF7B3C2),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
