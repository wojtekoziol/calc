part of 'calc_cubit.dart';

@freezed
class CalcState with _$CalcState {
  const factory CalcState.result([@Default('0') String result]) = _Result;
  const factory CalcState.add({
    required String a,
    @Default('0') String b,
  }) = _Add;
  const factory CalcState.subtract({
    required String a,
    @Default('0') String b,
  }) = _Subtract;
  const factory CalcState.multiply({
    required String a,
    @Default('0') String b,
  }) = _Multiply;
  const factory CalcState.divide({
    required String a,
    @Default('0') String b,
  }) = _Divide;
  const factory CalcState.error(String message) = _Error;
}
