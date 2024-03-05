// ignore_for_file: depend_on_referenced_packages

import 'package:breast_cancer_prediction/Malignant_protocol.dart';
import 'package:breast_cancer_prediction/about.dart';
import 'package:breast_cancer_prediction/benign_protocol.dart';
import 'package:breast_cancer_prediction/components/button.dart';
import 'package:breast_cancer_prediction/cubit/breastcancer_cubit.dart';
import 'package:breast_cancer_prediction/first_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);
  static String id = 'Result';
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
        //color: Color(0xFFF7CCD6),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Your Result',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  BlocBuilder<BreastcancerCubit, BreastcancerState>(
                    builder: (context, state) {
                      if (state is BreastcancerSuccess) {
                        return Stack(alignment: Alignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                child: Text(
                                  state.breastCancerModel.data,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                            
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }else{
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Benign.id);
                        },
                        child: Container(
                            width: 150,
                            height: 50,
                            color: Colors.black,
                            child: const Center(
                              child: Text(
                                'Benign',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFFF7B3C2),
                                ),
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Malignant.id);
                        },
                        child: Container(
                            width: 150,
                            height: 50,
                            color: Colors.black,
                            child: const Center(
                              child: Text(
                                'Malignant',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFFF7B3C2),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: 'About Breast Cancer',
                    onTap: () {
                      Navigator.pushNamed(context, About.id);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: 'Re Enter Values',
                    onTap: () {
                      Navigator.pushNamed(context, FirstInputs.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
