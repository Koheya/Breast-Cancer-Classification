// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:breast_cancer_prediction/components/button.dart';
import 'package:breast_cancer_prediction/components/input_titles.dart';
import 'package:breast_cancer_prediction/components/text_form_field.dart';
import 'package:breast_cancer_prediction/cubit/breastcancer_cubit.dart';
import 'package:breast_cancer_prediction/second_inputs.dart';
import 'package:flutter/material.dart';

class FirstInputs extends StatefulWidget {
   const FirstInputs({Key? key}) : super(key: key);
   static String id = 'FirstInputs';
  @override
  State<FirstInputs> createState() => _FirstInputsState();
}

class _FirstInputsState extends State<FirstInputs> {
  
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Morphological Features',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      // backgroundColor: Color(0xFFF7CCD6),
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
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputTitle(title: 'Radius Mean :'),
                      const SizedBox(height: 10),
                      Inputs(highRange: 30.0,lowRange: 7.0,hint: 'Value range: 7.0 - 30.0', controller: BreastcancerCubit.get(context).raduis_mean),
                      const SizedBox(height: 15),
                      // texture_mean
                      InputTitle(title: 'Texture Mean :'),
                      const SizedBox(height: 10),
                      Inputs(highRange: 33.6,lowRange: 9.7,hint: 'Value range: 9.7 - 33.6', controller: BreastcancerCubit.get(context).texture_mean),
                      const SizedBox(height: 15),
                      // perimeter_mean
                      InputTitle(title: 'Perimeter Mean :'),
                      const SizedBox(height: 10),
                      Inputs(highRange: 186.9,lowRange: 47.9,
                          hint: 'Value range: 47.9 - 186.9', controller: BreastcancerCubit.get(context).perimeter_mean),
                      const SizedBox(height: 15),
                      // area_mean
                      InputTitle(title: 'Area Means :'),
                      const SizedBox(height: 10),
                      Inputs(highRange: 2501,lowRange: 170.4,hint: 'Value range: 170.4 - 2501', controller: BreastcancerCubit.get(context).area_mean),
                      const SizedBox(height: 15),
                      // smothness_mean
                      InputTitle(title: 'Smoothness Mean :'),
                      const SizedBox(height: 10),
                      Inputs(highRange: 0.14,lowRange: 0,
                          hint: 'Value range: 0 - 0.14', controller: BreastcancerCubit.get(context).smothness_mean),
                      const SizedBox(height: 20),
                      Button(title: 'Next',onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, SecondInputs.id);
                        }
                      } ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
