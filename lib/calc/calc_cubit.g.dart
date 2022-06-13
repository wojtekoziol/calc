// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      json['result'] as String? ?? '0',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'result': instance.result,
      'runtimeType': instance.$type,
    };

_$_Add _$$_AddFromJson(Map<String, dynamic> json) => _$_Add(
      a: json['a'] as String,
      b: json['b'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AddToJson(_$_Add instance) => <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'runtimeType': instance.$type,
    };

_$_Subtract _$$_SubtractFromJson(Map<String, dynamic> json) => _$_Subtract(
      a: json['a'] as String,
      b: json['b'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_SubtractToJson(_$_Subtract instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'runtimeType': instance.$type,
    };

_$_Multiply _$$_MultiplyFromJson(Map<String, dynamic> json) => _$_Multiply(
      a: json['a'] as String,
      b: json['b'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MultiplyToJson(_$_Multiply instance) =>
    <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'runtimeType': instance.$type,
    };

_$_Divide _$$_DivideFromJson(Map<String, dynamic> json) => _$_Divide(
      a: json['a'] as String,
      b: json['b'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DivideToJson(_$_Divide instance) => <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'runtimeType': instance.$type,
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
