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
          minimum: const EdgeInsets.all(
            CommonConstants.baseExtraLargePadding,
          ),
          child: WillPopScope(
            onWillPop: () async => false,
            child: _buildWidget(),
          ),
        ),
      ),
    );
  }

  Column _buildWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          flex: 4,
          child: SizedBox.expand(),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: SizeConfig().screenWidth / 2,
            child: Image.asset('assets/images/tinder_logo.png'),
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            verticalDirection: VerticalDirection.up,
            children: _buildButtonGroup(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildButtonGroup() {
    return <Widget>[
      CustomTextButton(
        text: 'Trouble signing in?',
        onPressed: () {},
      ),
      const SizedBox(
        height: CommonConstants.baseMediumPadding,
      ),
      CustomOutlinedButton(
        text: 'SIGN IN',
        onPressed: () {},
      ),
      const SizedBox(
        height: CommonConstants.baseMediumPadding,
      ),
      CustomFilledButton(
        text: 'CREATE ACCOUNT',
        onPressed: () {},
      ),
      const SizedBox(
        height: CommonConstants.baseLargePadding,
      ),
      _buildPolicyRichText(),
    ];
  }

  CustomRichText _buildPolicyRichText() {
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
