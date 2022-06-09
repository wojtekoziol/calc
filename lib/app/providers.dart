import 'package:calc/calc/calc_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Providers extends StatelessWidget {
  const Providers({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalcCubit(),
      child: child,
    );
  }
}
