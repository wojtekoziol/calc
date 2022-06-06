import 'package:calc/app/providers.dart';
import 'package:calc/calc/calc_view.dart';
import 'package:calc/config/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: kLightTheme,
        darkTheme: kDarkTheme,
        home: const CalcView(),
      ),
    );
  }
}
