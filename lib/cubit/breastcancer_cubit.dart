// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, unnecessary_brace_in_string_interps, avoid_print

import 'package:breast_cancer_prediction/models/breast_cancer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
part 'breastcancer_state.dart';
class BreastcancerCubit extends Cubit<BreastcancerState> {
  BreastcancerCubit() : super(BreastcancerInitial());
  static BreastcancerCubit get(context) => BlocProvider.of(context);
  TextEditingController raduis_mean = TextEditingController();
  TextEditingController texture_mean = TextEditingController();
  TextEditingController perimeter_mean = TextEditingController();
  TextEditingController area_mean = TextEditingController();
  TextEditingController smothness_mean = TextEditingController();
  TextEditingController compactness_mean = TextEditingController();
  TextEditingController concavity_mean = TextEditingController();
  TextEditingController concave_points_mean = TextEditingController();
  TextEditingController symmetry_mean = TextEditingController();
  TextEditingController fractal_dimension_mean = TextEditingController();
  Future<void> postData() async {
    // print(fractal_dimension_mean);
    emit(BreastcancerLoading());
    try {
  final response = await Dio().post(
      'https://rf-model-breast-cancer-data.onrender.com/predictions',
      data: {
        "values": [
          raduis_mean.text,
          texture_mean.text,
          perimeter_mean.text,
          area_mean.text,
          smothness_mean.text,
          compactness_mean.text,
          concavity_mean.text,
          concave_points_mean.text,
          symmetry_mean.text,
          fractal_dimension_mean.text,
        ]
      });
  final data = BreastCancerModel.fromJson(response.data);
  print('my data is ${data}');
  emit(BreastcancerSuccess(data));
} on DioError catch (e) {
  print('fffff${e.toString()}');
}
  }
}
