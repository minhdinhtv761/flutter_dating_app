// Flutter imports:
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    this.text = '',
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
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
