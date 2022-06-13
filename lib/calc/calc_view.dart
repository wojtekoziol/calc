import 'package:calc/calc/calc_cubit.dart';
import 'package:calc/calc/widgets/buttons_grid.dart';
import 'package:calc/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcView extends StatelessWidget {
  const CalcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Padding(
                padding: const EdgeInsets.all(kPaddingL),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BlocBuilder<CalcCubit, CalcState>(
                      builder: (_, state) {
                        final result = state.when<String>(
                          result: (result) => result,
                          add: (a, b) => b ?? a,
                          subtract: (a, b) => b ?? a,
                          multiply: (a, b) => b ?? a,
                          divide: (a, b) => b ?? a,
                          error: (message) => message,
                        );
                        return Text(
                          result,
                          style: Theme.of(context).textTheme.headline3,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: ButtonsGrid(),
          ),
        ],
      ),
    );
  }
}
