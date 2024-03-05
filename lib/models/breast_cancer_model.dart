
// ignore_for_file: prefer_typing_uninitialized_variables
class BreastCancerModel{
   var data;
  BreastCancerModel(this.data);
  factory BreastCancerModel.fromJson(json){
    return BreastCancerModel(json);
  }
}