// Flutter imports:
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;

  const CustomOutlinedButton({
    super.key,
    this.text = '',
    this.icon,
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
        child: icon == null
            ? Text(
                text,
              )
            : Row(
                children: <Widget>[
                  Icon(icon),
                  const Spacer(),
                  Text(
                    text,
                  ),
                  const Spacer(),
                ],
              ),
      ),
    );
  }
}
