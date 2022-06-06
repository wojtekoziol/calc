import 'package:bloc_test/bloc_test.dart';
import 'package:calc/calc/calc_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalcCubit', () {
    test('initial state is correct', () {
      expect(CalcCubit().state, equals(const CalcState.result()));
    });

    group('type', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] with correct number when state is initial.',
        build: CalcCubit.new,
        act: (cubit) => cubit
          ..type('1')
          ..type('2'),
        expect: () => const [
          CalcState.result('1'),
          CalcState.result('12'),
        ],
      );
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when typed with comma and zero.',
        build: CalcCubit.new,
        seed: () => const CalcState.result('1'),
        act: (cubit) => cubit
          ..type('.')
          ..type('0')
          ..type('0')
          ..type('2'),
        expect: () => const [
          CalcState.result('1.'),
          CalcState.result('1.0'),
          CalcState.result('1.00'),
          CalcState.result('1.002'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when typed with comma.',
        build: CalcCubit.new,
        seed: () => const CalcState.result('1'),
        act: (cubit) => cubit
          ..type('.')
          ..type('2')
          ..type('3'),
        expect: () => const [
          CalcState.result('1.'),
          CalcState.result('1.2'),
          CalcState.result('1.23'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when zero typed with comma.',
        build: CalcCubit.new,
        act: (cubit) => cubit
          ..type('.')
          ..type('2')
          ..type('0')
          ..type('3'),
        expect: () => const [
          CalcState.result('0.'),
          CalcState.result('0.2'),
          CalcState.result('0.20'),
          CalcState.result('0.203'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        "doesn't emit any state when typed char is not correct.",
        build: CalcCubit.new,
        act: (cubit) => cubit
          ..type('a')
          ..type('b')
          ..type('p')
          ..type('"'),
        expect: List.empty,
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when typed with multiple commas.',
        build: CalcCubit.new,
        act: (cubit) => cubit
          ..type('0')
          ..type('.')
          ..type('2')
          ..type('.')
          ..type('3'),
        expect: () => const [
          CalcState.result('0'),
          CalcState.result('0.'),
          CalcState.result('0.2'),
          CalcState.result('0.23'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when typed with '
        'multiple zeros in the beginning.',
        build: CalcCubit.new,
        act: (cubit) => cubit
          ..type('0')
          ..type('0')
          ..type('.')
          ..type('2')
          ..type('3'),
        expect: () => const [
          CalcState.result('0'),
          CalcState.result('0.'),
          CalcState.result('0.2'),
          CalcState.result('0.23'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.add] with correct number when '
        'state is CalcState.add.',
        build: CalcCubit.new,
        seed: () => const CalcState.add(a: '12'),
        act: (cubit) => cubit
          ..type('3')
          ..type('4'),
        expect: () => const [
          CalcState.add(a: '12', b: '3'),
          CalcState.add(a: '12', b: '34'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.multiply] with correct number when '
        'state is CalcState.subtract.',
        build: CalcCubit.new,
        seed: () => const CalcState.subtract(a: '12'),
        act: (cubit) => cubit
          ..type('3')
          ..type('4'),
        expect: () => const [
          CalcState.subtract(a: '12', b: '3'),
          CalcState.subtract(a: '12', b: '34'),
        ],
      );
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.multiply] with correct number when '
        'state is CalcState.multiply.',
        build: CalcCubit.new,
        seed: () => const CalcState.multiply(a: '12'),
        act: (cubit) => cubit
          ..type('3')
          ..type('4'),
        expect: () => const [
          CalcState.multiply(a: '12', b: '3'),
          CalcState.multiply(a: '12', b: '34'),
        ],
      );
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.divide] with correct number when '
        'state is CalcState.divide.',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '12'),
        act: (cubit) => cubit
          ..type('3')
          ..type('4'),
        expect: () => const [
          CalcState.divide(a: '12', b: '3'),
          CalcState.divide(a: '12', b: '34'),
        ],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.divide] with correct number when '
        'state is CalcState.error.',
        build: CalcCubit.new,
        seed: () => const CalcState.error('Not a number'),
        act: (cubit) => cubit
          ..type('3')
          ..type('4'),
        expect: () => const [
          CalcState.result('3'),
          CalcState.result('34'),
        ],
      );
    });

    group('add', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.add] when add is called and a is specified',
        build: CalcCubit.new,
        seed: () => const CalcState.result('12.5'),
        act: (cubit) => cubit.add(),
        expect: () => const [CalcState.add(a: '12.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.add] when add is called and a is not specified',
        build: CalcCubit.new,
        act: (cubit) => cubit.add(),
        expect: () => const [
          CalcState.result('0'),
          CalcState.add(a: '0'),
        ],
      );
    });

    group('subtract', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.subtract] when subtract is called and a is specified',
        build: CalcCubit.new,
        seed: () => const CalcState.result('12.5'),
        act: (cubit) => cubit.subtract(),
        expect: () => const [CalcState.subtract(a: '12.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.subtract] when subtract is called '
        'and a is not specified',
        build: CalcCubit.new,
        act: (cubit) => cubit.subtract(),
        expect: () => const [
          CalcState.result('0'),
          CalcState.subtract(a: '0'),
        ],
      );
    });

    group('multiply', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.multiply] when multiply is called and a is specified',
        build: CalcCubit.new,
        seed: () => const CalcState.result('12.5'),
        act: (cubit) => cubit.multiply(),
        expect: () => const [CalcState.multiply(a: '12.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.multiply] when multiply is called '
        'and a is not specified',
        build: CalcCubit.new,
        act: (cubit) => cubit.multiply(),
        expect: () => const [
          CalcState.result('0'),
          CalcState.multiply(a: '0'),
        ],
      );
    });

    group('divide', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.divide] when divide is called and a is specified',
        build: CalcCubit.new,
        seed: () => const CalcState.result('12.5'),
        act: (cubit) => cubit.divide(),
        expect: () => const [CalcState.divide(a: '12.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.divide] when divide is called and a is not specified',
        build: CalcCubit.new,
        act: (cubit) => cubit.divide(),
        expect: () => const [
          CalcState.result('0'),
          CalcState.divide(a: '0'),
        ],
      );
    });

    group('result', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is add',
        build: CalcCubit.new,
        seed: () => const CalcState.add(a: '3', b: '2.5'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('5.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is add and b is null',
        build: CalcCubit.new,
        seed: () => const CalcState.add(a: '3'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('3')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is subtract',
        build: CalcCubit.new,
        seed: () => const CalcState.subtract(a: '3', b: '2.5'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('0.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is subtract and b is null',
        build: CalcCubit.new,
        seed: () => const CalcState.subtract(a: '3'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('3')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is multiply',
        build: CalcCubit.new,
        seed: () => const CalcState.multiply(a: '3', b: '2.5'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('7.5')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is multiply and b is null',
        build: CalcCubit.new,
        seed: () => const CalcState.multiply(a: '3'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('3')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is divide',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '3', b: '1.5'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('2')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is divide and b is null',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '3'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('3')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when state is divide and b is 0',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '3', b: '0'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.error('Not a number')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] when a and b '
        'have multiple digits after comma',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '0.412312', b: '0.123412'),
        act: (cubit) => cubit.result(),
        expect: () => const [CalcState.result('3.340939292775419')],
      );
    });

    group('reset', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] with zero',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '3', b: '0'),
        act: (cubit) => cubit.reset(),
        expect: () => const [CalcState.result()],
      );
    });

    group('percent', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] with result divided by 100',
        build: CalcCubit.new,
        seed: () => const CalcState.result('8'),
        act: (cubit) => cubit.percent(),
        expect: () => const [CalcState.result('0.08')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.add] with b divided by 100',
        build: CalcCubit.new,
        seed: () => const CalcState.add(a: '3', b: '8'),
        act: (cubit) => cubit.percent(),
        expect: () => const [CalcState.add(a: '3', b: '0.08')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.subtract] with b divided by 100',
        build: CalcCubit.new,
        seed: () => const CalcState.subtract(a: '3', b: '8'),
        act: (cubit) => cubit.percent(),
        expect: () => const [CalcState.subtract(a: '3', b: '0.08')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.multiply] with b divided by 100',
        build: CalcCubit.new,
        seed: () => const CalcState.multiply(a: '3', b: '8'),
        act: (cubit) => cubit.percent(),
        expect: () => const [CalcState.multiply(a: '3', b: '0.08')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.divide] with b divided by 100',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '3', b: '8'),
        act: (cubit) => cubit.percent(),
        expect: () => const [CalcState.divide(a: '3', b: '0.08')],
      );

      blocTest<CalcCubit, CalcState>(
        'does not emit anything when state is [CalcState.error]',
        build: CalcCubit.new,
        seed: () => const CalcState.error('Not a number'),
        act: (cubit) => cubit.percent(),
        expect: List.empty,
      );
    });

    group('changeSign', () {
      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.result] with result with changed sign',
        build: CalcCubit.new,
        seed: () => const CalcState.result('8.1354231'),
        act: (cubit) => cubit.changeSign(),
        expect: () => const [CalcState.result('-8.1354231')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.add] with b with changed sign',
        build: CalcCubit.new,
        seed: () => const CalcState.add(a: '3', b: '8'),
        act: (cubit) => cubit.changeSign(),
        expect: () => const [CalcState.add(a: '3', b: '-8')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.subtract] with b with changed sign',
        build: CalcCubit.new,
        seed: () => const CalcState.subtract(a: '3', b: '8'),
        act: (cubit) => cubit.changeSign(),
        expect: () => const [CalcState.subtract(a: '3', b: '-8')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.multiply] with b with changed sign',
        build: CalcCubit.new,
        seed: () => const CalcState.multiply(a: '3', b: '8'),
        act: (cubit) => cubit.changeSign(),
        expect: () => const [CalcState.multiply(a: '3', b: '-8')],
      );

      blocTest<CalcCubit, CalcState>(
        'emits [CalcState.divide] with b with changed sign',
        build: CalcCubit.new,
        seed: () => const CalcState.divide(a: '3', b: '8'),
        act: (cubit) => cubit.changeSign(),
        expect: () => const [CalcState.divide(a: '3', b: '-8')],
      );

      blocTest<CalcCubit, CalcState>(
        'does not emit anything when state is [CalcState.error]',
        build: CalcCubit.new,
        seed: () => const CalcState.error('Not a number'),
        act: (cubit) => cubit.changeSign(),
        expect: List.empty,
      );
    });
  });
}
