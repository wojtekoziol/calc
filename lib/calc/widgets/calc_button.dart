import 'package:calc/config/constants.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.color,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kPaddingM),
        ),
        child: Center(
          child: Text(
            text,
            style:
                Theme.of(context).textTheme.headline6!.copyWith(color: color),
          ),
        ),
      ),
    );
  }
}
