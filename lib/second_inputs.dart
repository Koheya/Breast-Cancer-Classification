// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, depend_on_referenced_packages

import 'package:breast_cancer_prediction/components/button.dart';
import 'package:breast_cancer_prediction/components/input_titles.dart';
import 'package:breast_cancer_prediction/components/text_form_field.dart';
import 'package:breast_cancer_prediction/cubit/breastcancer_cubit.dart';
import 'package:breast_cancer_prediction/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondInputs extends StatefulWidget {
  const SecondInputs({Key? key}) : super(key: key);
  static String id = 'SecondInputs';
  @override
  State<SecondInputs> createState() => _SecondInputsState();
}

class _SecondInputsState extends State<SecondInputs> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Shape Features',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
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
                      InputTitle(title: 'Compactness Mean :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 0.3,
                          lowRange: 0,
                          hint: 'Value range: 0 - 0.3',
                          controller:
                              BreastcancerCubit.get(context).compactness_mean),
                      const SizedBox(height: 15),
                      // texture_mean
                      InputTitle(title: 'Concavity Mean :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 0.43,
                          lowRange: 0,
                          hint: 'Value range: 0 - 0.43',
                          controller:
                              BreastcancerCubit.get(context).concavity_mean),
                      const SizedBox(height: 15),
                      // concave_points_mean
                      InputTitle(title: 'Concave Points Mean :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 0.2,
                          lowRange: 0,
                          hint: 'Value range: 0 - 0.2',
                          controller: BreastcancerCubit.get(context)
                              .concave_points_mean),
                      const SizedBox(height: 15),
                      // Symmetry Mean
                      InputTitle(title: 'Symmetry Mean :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 0.7,
                          lowRange: 0,
                          hint: 'Value range: 0 - 0.7',
                          controller:
                              BreastcancerCubit.get(context).symmetry_mean),
                      const SizedBox(height: 15),
                      // fractal_dimension_mean
                      InputTitle(title: 'Fractal Dimension Mean :'),
                      const SizedBox(height: 10),
                      Inputs(
                          highRange: 0.3,
                          lowRange: 0,
                          hint: 'Value range: 0 - 0.3',
                          controller: BreastcancerCubit.get(context)
                              .fractal_dimension_mean),
                      const SizedBox(height: 20),
                      Button(
                        title: 'Submit',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<BreastcancerCubit>().postData();
                            Navigator.pushNamed(context, Result.id);
                          }
                        },
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
