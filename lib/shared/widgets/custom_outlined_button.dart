// Flutter imports:
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;

  const CustomOutlinedButton({
    super.key,
    this.text = '',
    this.child,
    this.height,
    this.width,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        child: text != ''
            ? Text(
                text,
              )
            : child,
      ),
    );
  }
}
