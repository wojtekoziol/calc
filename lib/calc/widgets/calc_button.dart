import 'package:calc/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CalcButton extends HookWidget {
  const CalcButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
    this.clicked = false,
  });

  final VoidCallback onTap;
  final String text;
  final Color? color;
  final bool clicked;

  @override
  Widget build(BuildContext context) {
    final animController = useAnimationController(duration: kAnimDuration);
    final colorAnim = ColorTween(
      begin: color ?? Theme.of(context).textTheme.headline6!.color,
      end: Theme.of(context).colorScheme.secondary,
    ).animate(animController);
    final scaleAnim = CurvedAnimation(
      parent: animController,
      curve: kAnimCurve,
    );
    final borderRadiusAnim = Tween<double>(
      begin: kPaddingL,
      end: kPaddingM,
    ).animate(animController);

    useEffect(() {
      if (clicked) {
        animController.forward();
      } else {
        animController.reverse();
      }
      return null;
    }, [clicked]);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(kPaddingS),
          child: AnimatedBuilder(
            animation: animController,
            builder: (_, __) => Transform.scale(
              scale: scaleAnim.value,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadiusAnim.value),
                  color: color,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.transparent,
            child: Align(
              child: AnimatedBuilder(
                animation: colorAnim,
                builder: (_, __) => Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: colorAnim.value),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
