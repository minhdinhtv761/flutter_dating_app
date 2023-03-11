// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../shared/shared.dart';

class PolicyRichText extends StatelessWidget {
  const PolicyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRichText(
      children: <TextSpanParams>[
        TextSpanParams(
          text: 'By tapping "Sign in", you agree to our ',
        ),
        TextSpanParams(
          text: 'Terms',
          style: TextSpanStyle.clickable,
        ),
        TextSpanParams(
          text: '. Learn how we process your data in our ',
        ),
        TextSpanParams(
          text: 'Privacy Policy',
          style: TextSpanStyle.clickable,
        ),
        TextSpanParams(
          text: ' and ',
        ),
        TextSpanParams(
          text: 'Cookies Policy',
          style: TextSpanStyle.clickable,
        ),
        TextSpanParams(
          text: '.',
        ),
      ],
    );
  }
}
