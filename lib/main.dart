// ignore_for_file: depend_on_referenced_packages

import 'package:breast_cancer_prediction/Malignant_protocol.dart';
import 'package:breast_cancer_prediction/about.dart';
import 'package:breast_cancer_prediction/benign_protocol.dart';
import 'package:breast_cancer_prediction/cubit/breastcancer_cubit.dart';
import 'package:breast_cancer_prediction/first_inputs.dart';
import 'package:breast_cancer_prediction/homePage.dart';
import 'package:breast_cancer_prediction/login_screen.dart';
import 'package:breast_cancer_prediction/reset_password.dart';
import 'package:breast_cancer_prediction/result.dart';
import 'package:breast_cancer_prediction/second_inputs.dart';
import 'package:breast_cancer_prediction/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BreastcancerCubit(),
      child: MaterialApp(
        routes: {
          LoginScreen.id: (context) => const LoginScreen(),
          SignUp.id: (context) => const SignUp(),
          FirstInputs.id: (context) => const FirstInputs(),
          SecondInputs.id: (context) => const SecondInputs(),
          HomePage.id: (context) => const HomePage(),
          Result.id: (context) => const Result(),
          About.id: (context) => About(),
          ForgetPassword.id: (context) => const ForgetPassword(),
          Benign.id: (context) => const Benign(),
          Malignant.id: (context) => const Malignant(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
      ),
    );
  }
}
