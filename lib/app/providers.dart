import 'package:calc/calc/calc_cubit.dart';
import 'package:calc/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class Providers extends StatelessWidget {
  const Providers({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalcCubit(Hive.box(calcCubitBox)),
      child: child,
    );
  }
}
