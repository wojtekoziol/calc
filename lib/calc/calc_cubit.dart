import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:calc/config/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'calc_state.dart';
part 'calc_cubit.freezed.dart';
part 'calc_cubit.g.dart';

class CalcCubit extends Cubit<CalcState> {
  CalcCubit(this.box) : super(const CalcState.result()) {
    _emitPrevState();
  }

  final Box<List<String>> box;
  bool _isPrev = false;

  final _removeZerosRegex = RegExp(r'([.]*0)(?!.*\d)');
  final _chars = [
    '-',
    '.',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0'
  ];

  void _emitPrevState() {
    final statesList = box.get(kStateKey);
    if (statesList == null || statesList.isEmpty) return;
    final prevState = CalcState.fromJson(
      json.decode(statesList.last) as Map<String, dynamic>,
    );
    emit(prevState);
  }

  @override
  void onChange(Change<CalcState> change) {
    super.onChange(change);
    final statesList = (box.get(kStateKey) ??
        [json.encode(const CalcState.result().toJson())])
      ..add(json.encode(change.nextState.toJson()));
    while (statesList.length > 26) {
      statesList.removeAt(0);
    }
    box.put(kStateKey, statesList);
    _isPrev = false;
  }

  String _getTyped(String n, String char) {
    if (char == '.' && n.contains('.')) return n;
    if (char == '-' && n.contains('-')) return n;
    if (n == '0' && char != '.') return char;
    if (n == '0' && char == '0') return n;
    return '$n$char';
  }

  void type(String char) {
    if (!_chars.contains(char)) return;
    final newState = state.map(
      result: (value) => value.copyWith(result: _getTyped(value.result, char)),
      add: (value) => value.copyWith(b: _getTyped(value.b ?? '0', char)),
      subtract: (value) => value.copyWith(b: _getTyped(value.b ?? '0', char)),
      multiply: (value) => value.copyWith(b: _getTyped(value.b ?? '0', char)),
      divide: (value) => value.copyWith(b: _getTyped(value.b ?? '0', char)),
      error: (value) => CalcState.result(_getTyped('0', char)),
    );
    emit(newState);
  }

  void add() {
    result();
    state.whenOrNull(
      result: (result) => emit(CalcState.add(a: result)),
    );
  }

  void subtract() {
    result();
    state.whenOrNull(
      result: (result) => emit(CalcState.subtract(a: result)),
    );
  }

  void multiply() {
    result();
    state.whenOrNull(
      result: (result) => emit(CalcState.multiply(a: result)),
    );
  }

  void divide() {
    result();
    state.whenOrNull(
      result: (result) => emit(CalcState.divide(a: result)),
    );
  }

  void result() {
    final result = state.whenOrNull<num?>(
      result: num.parse,
      add: (a, b) => num.parse(a) + num.parse(b ?? '0'),
      subtract: (a, b) => num.parse(a) - num.parse(b ?? '0'),
      multiply: (a, b) => num.parse(a) * num.parse(b ?? '1'),
      divide: (a, b) {
        final n = num.parse(b ?? '1');
        if (n == 0) return null;
        return num.parse(a) / n;
      },
    );
    if (result == null) {
      emit(const CalcState.error('Not a number'));
      return;
    }
    if (result == 0) {
      emit(const CalcState.result());
      return;
    }
    emit(CalcState.result(
      result.toString().replaceAll(_removeZerosRegex, ''),
    ));
  }

  void reset() {
    emit(const CalcState.result());
  }

  void percent() {
    final newState = state.map(
      result: (value) => value.copyWith(
        result: '${num.parse(value.result) / 100}',
      ),
      add: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') / 100}',
      ),
      subtract: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') / 100}',
      ),
      multiply: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') / 100}',
      ),
      divide: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') / 100}',
      ),
      error: (value) => value,
    );
    emit(newState);
  }

  void changeSign() {
    final newState = state.map(
      result: (value) => value.copyWith(
        result: '${num.parse(value.result) * -1}',
      ),
      add: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') * -1}',
      ),
      subtract: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') * -1}',
      ),
      multiply: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') * -1}',
      ),
      divide: (value) => value.copyWith(
        b: '${num.parse(value.b ?? '0') * -1}',
      ),
      error: (value) => value,
    );
    emit(newState);
  }

  // TODO(wojtekoziol): test
  void revert() {
    final statesList = box.get(kStateKey);
    if (statesList == null || statesList.isEmpty) return;
    statesList.removeLast();
    if (_isPrev) statesList.removeLast();
    if (statesList.isEmpty) return;
    final prevState = CalcState.fromJson(
      json.decode(statesList.last) as Map<String, dynamic>,
    );
    emit(prevState);
    _isPrev = true;
  }
}
