// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../shared/shared.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: GradientBackground(
        gradientStart: ColorConstants.lightGradientStart,
        gradientEnd: ColorConstants.lightGradientEnd,
        gradientRotation: CommonConstants.gradientRotation,
        child: SafeArea(
          child: WillPopScope(
            onWillPop: () async => false,
            child: Column(
              verticalDirection: VerticalDirection.up,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  text: "SIGN IN",
                  onPressed: () {
                    print(SizeConfig().screenWidth);
                    print(SizeConfig().screenHeight);
                    print(MediaQuery.of(context).devicePixelRatio);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                CustomOutlinedButton(
                  text: "CREATE ACCOUNT",
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final bool isFullWidth;
  final VoidCallback? onPressed;

  const CustomOutlinedButton({
    super.key,
    this.text = '',
    this.child,
    this.isFullWidth = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: text != ''
          ? Text(
              text,
            )
          : child,
    );
  }
}
