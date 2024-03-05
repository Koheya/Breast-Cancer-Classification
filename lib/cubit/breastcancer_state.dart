part of 'breastcancer_cubit.dart';
@immutable
abstract class BreastcancerState {}
class BreastcancerInitial extends BreastcancerState {
}
class BreastcancerLoading extends BreastcancerState {
}
class BreastcancerSuccess extends BreastcancerState {
  final BreastCancerModel breastCancerModel;
  BreastcancerSuccess(this.breastCancerModel);
}
class BreastcancerFailure extends BreastcancerState {
  final String errorMessage;
  BreastcancerFailure(this.errorMessage);
}
