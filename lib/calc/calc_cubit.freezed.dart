// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calc_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalcState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcStateCopyWith<$Res> {
  factory $CalcStateCopyWith(CalcState value, $Res Function(CalcState) then) =
      _$CalcStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalcStateCopyWithImpl<$Res> implements $CalcStateCopyWith<$Res> {
  _$CalcStateCopyWithImpl(this._value, this._then);

  final CalcState _value;
  // ignore: unused_field
  final $Res Function(CalcState) _then;
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_Result(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Result implements _Result {
  const _$_Result([this.result = '0']);

  @override
  @JsonKey()
  final String result;

  @override
  String toString() {
    return 'CalcState.result(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) {
    return result(this.result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) {
    return result?.call(this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _Result implements CalcState {
  const factory _Result([final String result]) = _$_Result;

  String get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  $Res call({String a, String? b});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, (v) => _then(v as _$_Add));

  @override
  _$_Add get _value => super._value as _$_Add;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_$_Add(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add({required this.a, this.b});

  @override
  final String a;
  @override
  final String? b;

  @override
  String toString() {
    return 'CalcState.add(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(b));

  @JsonKey(ignore: true)
  @override
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) {
    return add(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) {
    return add?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements CalcState {
  const factory _Add({required final String a, final String? b}) = _$_Add;

  String get a => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubtractCopyWith<$Res> {
  factory _$$_SubtractCopyWith(
          _$_Subtract value, $Res Function(_$_Subtract) then) =
      __$$_SubtractCopyWithImpl<$Res>;
  $Res call({String a, String? b});
}

/// @nodoc
class __$$_SubtractCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$$_SubtractCopyWith<$Res> {
  __$$_SubtractCopyWithImpl(
      _$_Subtract _value, $Res Function(_$_Subtract) _then)
      : super(_value, (v) => _then(v as _$_Subtract));

  @override
  _$_Subtract get _value => super._value as _$_Subtract;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_$_Subtract(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Subtract implements _Subtract {
  const _$_Subtract({required this.a, this.b});

  @override
  final String a;
  @override
  final String? b;

  @override
  String toString() {
    return 'CalcState.subtract(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subtract &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(b));

  @JsonKey(ignore: true)
  @override
  _$$_SubtractCopyWith<_$_Subtract> get copyWith =>
      __$$_SubtractCopyWithImpl<_$_Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) {
    return subtract(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) {
    return subtract?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class _Subtract implements CalcState {
  const factory _Subtract({required final String a, final String? b}) =
      _$_Subtract;

  String get a => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SubtractCopyWith<_$_Subtract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MultiplyCopyWith<$Res> {
  factory _$$_MultiplyCopyWith(
          _$_Multiply value, $Res Function(_$_Multiply) then) =
      __$$_MultiplyCopyWithImpl<$Res>;
  $Res call({String a, String? b});
}

/// @nodoc
class __$$_MultiplyCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$$_MultiplyCopyWith<$Res> {
  __$$_MultiplyCopyWithImpl(
      _$_Multiply _value, $Res Function(_$_Multiply) _then)
      : super(_value, (v) => _then(v as _$_Multiply));

  @override
  _$_Multiply get _value => super._value as _$_Multiply;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_$_Multiply(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Multiply implements _Multiply {
  const _$_Multiply({required this.a, this.b});

  @override
  final String a;
  @override
  final String? b;

  @override
  String toString() {
    return 'CalcState.multiply(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Multiply &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(b));

  @JsonKey(ignore: true)
  @override
  _$$_MultiplyCopyWith<_$_Multiply> get copyWith =>
      __$$_MultiplyCopyWithImpl<_$_Multiply>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) {
    return multiply(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) {
    return multiply?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) {
    return multiply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) {
    return multiply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply(this);
    }
    return orElse();
  }
}

abstract class _Multiply implements CalcState {
  const factory _Multiply({required final String a, final String? b}) =
      _$_Multiply;

  String get a => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MultiplyCopyWith<_$_Multiply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DivideCopyWith<$Res> {
  factory _$$_DivideCopyWith(_$_Divide value, $Res Function(_$_Divide) then) =
      __$$_DivideCopyWithImpl<$Res>;
  $Res call({String a, String? b});
}

/// @nodoc
class __$$_DivideCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$$_DivideCopyWith<$Res> {
  __$$_DivideCopyWithImpl(_$_Divide _value, $Res Function(_$_Divide) _then)
      : super(_value, (v) => _then(v as _$_Divide));

  @override
  _$_Divide get _value => super._value as _$_Divide;

  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_$_Divide(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Divide implements _Divide {
  const _$_Divide({required this.a, this.b});

  @override
  final String a;
  @override
  final String? b;

  @override
  String toString() {
    return 'CalcState.divide(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Divide &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(b));

  @JsonKey(ignore: true)
  @override
  _$$_DivideCopyWith<_$_Divide> get copyWith =>
      __$$_DivideCopyWithImpl<_$_Divide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) {
    return divide(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) {
    return divide?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) {
    return divide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) {
    return divide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide(this);
    }
    return orElse();
  }
}

abstract class _Divide implements CalcState {
  const factory _Divide({required final String a, final String? b}) = _$_Divide;

  String get a => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DivideCopyWith<_$_Divide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CalcState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String result) result,
    required TResult Function(String a, String? b) add,
    required TResult Function(String a, String? b) subtract,
    required TResult Function(String a, String? b) multiply,
    required TResult Function(String a, String? b) divide,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String result)? result,
    TResult Function(String a, String? b)? add,
    TResult Function(String a, String? b)? subtract,
    TResult Function(String a, String? b)? multiply,
    TResult Function(String a, String? b)? divide,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Result value) result,
    required TResult Function(_Add value) add,
    required TResult Function(_Subtract value) subtract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Result value)? result,
    TResult Function(_Add value)? add,
    TResult Function(_Subtract value)? subtract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CalcState {
  const factory _Error(final String message) = _$_Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
