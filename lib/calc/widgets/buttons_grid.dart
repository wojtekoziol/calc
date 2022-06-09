import 'package:calc/calc/calc_cubit.dart';
import 'package:calc/calc/widgets/calc_button.dart';
import 'package:calc/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsGrid extends StatelessWidget {
  const ButtonsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final calc = context.read<CalcCubit>();

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(kPaddingL),
        ),
      ),
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: kPaddingM,
        crossAxisSpacing: kPaddingM,
        padding: const EdgeInsets.all(kPaddingL),
        children: [
          CalcButton(
            onTap: calc.reset,
            text: 'AC',
            color: kGreen,
          ),
          CalcButton(
            onTap: calc.changeSign,
            text: '+/-',
            color: kGreen,
          ),
          CalcButton(
            onTap: calc.percent,
            text: '%',
            color: kGreen,
          ),
          BlocBuilder<CalcCubit, CalcState>(
            builder: (_, state) {
              return CalcButton(
                onTap: calc.divide,
                text: '÷',
                color: kRed,
                clicked: state.whenOrNull(divide: (a, b) => true) ?? false,
              );
            },
          ),
          CalcButton(
            onTap: () => calc.type('7'),
            text: '7',
          ),
          CalcButton(
            onTap: () => calc.type('8'),
            text: '8',
          ),
          CalcButton(
            onTap: () => calc.type('9'),
            text: '9',
          ),
          BlocBuilder<CalcCubit, CalcState>(
            builder: (_, state) {
              return CalcButton(
                onTap: calc.multiply,
                text: 'X',
                color: kRed,
                clicked: state.whenOrNull(multiply: (a, b) => true) ?? false,
              );
            },
          ),
          CalcButton(
            onTap: () => calc.type('4'),
            text: '4',
          ),
          CalcButton(
            onTap: () => calc.type('5'),
            text: '5',
          ),
          CalcButton(
            onTap: () => calc.type('6'),
            text: '6',
          ),
          BlocBuilder<CalcCubit, CalcState>(
            builder: (_, state) {
              return CalcButton(
                onTap: calc.subtract,
                text: '-',
                color: kRed,
                clicked: state.whenOrNull(subtract: (a, b) => true) ?? false,
              );
            },
          ),
          CalcButton(
            onTap: () => calc.type('1'),
            text: '1',
          ),
          CalcButton(
            onTap: () => calc.type('2'),
            text: '2',
          ),
          CalcButton(
            onTap: () => calc.type('3'),
            text: '3',
          ),
          BlocBuilder<CalcCubit, CalcState>(
            builder: (_, state) {
              return CalcButton(
                onTap: calc.add,
                text: '+',
                color: kRed,
                clicked: state.whenOrNull(add: (a, b) => true) ?? false,
              );
            },
          ),
          CalcButton(
            onTap: () {},
            text: '←',
          ),
          CalcButton(
            onTap: () => calc.type('0'),
            text: '0',
          ),
          CalcButton(
            onTap: () => calc.type('.'),
            text: '.',
          ),
          CalcButton(
            onTap: calc.result,
            text: '=',
            color: kRed,
          ),
        ],
      ),
    );
  }
}
