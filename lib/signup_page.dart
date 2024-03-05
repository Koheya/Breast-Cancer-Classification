// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names, unused_local_variable, avoid_print
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id = 'SignUp';
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  String? email, password;
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordControllerf = TextEditingController();
  var passwordControllerl = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;
  bool isConfirmPasswordShow = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // color: Color(0xFFF7CCD6),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://img.freepik.com/premium-vector/pink-ribbon-breast-cancer-awareness-symbol_97886-2863.jpg?w=740'),

              // image: AssetImage('images/background.jpg'),
              opacity: 1,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: firstNameController,
                              decoration: InputDecoration(
                                hintText: "First Name",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  // color: Color(0xFFF7B3C2),
                                ),
                              ),
                              validator: (fvalue) {
                                if (firstNameController.text.isEmpty) {
                                  return "FName must not be empty!";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: lastNameController,
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  // color: Color(0xFFF7B3C2),
                                ),
                              ),
                              validator: (lvalue) {
                                if (lastNameController.text.isEmpty) {
                                  return "LName must not be empty!";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.black,
                            // color: Color(0xFFF7B3C2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (phone_value) {
                          if (phoneController.text.trim().length < 11) {
                            return "Wrong phone number!";
                          }
                          if (phoneController.text.isEmpty) {
                            return "phone number must not be empty!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
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
                            borderRadius: BorderRadius.circular(10),
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
                        controller: passwordControllerf,
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        obscureText: isPasswordShow,
                        validator: (value) {
                          if (passwordControllerf.text.trim().length < 6) {
                            return "weak password!";
                          }
                          if (passwordControllerf.text.isEmpty) {
                            return "password must not be empty!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordControllerl,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            // color: Color(0xFFF7B3C2),
                          ),
                          suffixIcon: IconButton(
                            icon: isConfirmPasswordShow
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
                                isConfirmPasswordShow = !isConfirmPasswordShow;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        obscureText: isConfirmPasswordShow,
                        validator: (value) {
                          if (passwordControllerl.text.trim().length < 6) {
                            return "weak password!";
                          }
                          if (passwordControllerl.text.isEmpty) {
                            return "password must not be empty!";
                          }
                          if (passwordControllerf.text !=
                              passwordControllerl.text) return 'Wrong Password';
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
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
                                UserCredential usercredential =
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                  email: email!,
                                  password: password!,
                                );
                                  User? user =
                                      FirebaseAuth.instance.currentUser;
                                  await user!.sendEmailVerification();
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Success'),
                                  ),
                                );
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'The password provided is too weak.'),
                                    ),
                                  );
                                } else if (e.code == 'email-already-in-use') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'The account already exists for that email.'),
                                    ),
                                  );
                                }
                              } catch (e) {
                                print(e);
                              }
                            }
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xFFF7B3C2),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
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
