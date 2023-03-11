// Flutter imports:
import 'package:flutter/material.dart';

class TextSpanParams {
  final String text;
  final TextSpanStyle style;

  TextSpanParams({
    required this.text,
    this.style = TextSpanStyle.normal,
  });
}

class CustomRichText extends StatelessWidget {
  final List<TextSpanParams>? children;

  const CustomRichText({
    super.key,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: _buildTextSpans(children),
      ),
    );
  }

  List<TextSpan>? _buildTextSpans(List<TextSpanParams>? listParams) {
    return listParams
        ?.map(
          (e) => TextSpan(
            text: e.text,
            style: _getTextStyle(e.style),
          ),
        )
        .toList();
  }
}

TextStyle? _getTextStyle(TextSpanStyle style) {
  switch (style) {
    case TextSpanStyle.clickable:
      {
        return const TextStyle(
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        );
      }
    default:
      {
        return null;
      }
  }
}

enum TextSpanStyle {
  clickable,
  normal,
}
