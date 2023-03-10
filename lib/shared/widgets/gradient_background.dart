// Flutter imports:
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Color gradientStart;
  final Color gradientEnd;
  final double gradientRotation;
  final Widget child;

  const GradientBackground({
    super.key,
    required this.child,
    required this.gradientStart,
    required this.gradientEnd,
    this.gradientRotation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
          colors: <Color>[
            gradientStart,
            gradientEnd,
          ],
          tileMode: TileMode.clamp,
          transform: GradientRotation(gradientRotation),
        ),
      ),
      height: double.infinity,
      width: double.infinity,
      child: child,
    );
  }
}
