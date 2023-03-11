// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../shared/shared.dart';
import 'widgets/auth_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      gradientStart: ColorConstants.lightGradientStart,
      gradientEnd: ColorConstants.lightGradientEnd,
      gradientRotation: CommonConstants.gradientRotation,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(
            backIcon: Icons.arrow_back_ios_new_rounded,
            backgroundColor: Colors.transparent,
            foregroundColor: ColorConstants.white),
        body: SafeArea(
          minimum: const EdgeInsets.all(
            CommonConstants.baseExtraLargePadding,
          ),
          child: _buildWidget(),
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
            child: Image.asset('assets/images/full_logo_white.png'),
          ),
        ),
        Expanded(
          flex: 5,
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
        text: 'SIGN IN WITH PHONE NUMBER',
        icon: Icons.phone_iphone_rounded,
        onPressed: () {},
      ),
      const SizedBox(
        height: CommonConstants.baseMediumPadding,
      ),
      CustomOutlinedButton(
        text: 'SIGN IN WITH FACEBOOK',
        icon: Icons.facebook_rounded,
        onPressed: () {},
      ),
      const SizedBox(
        height: CommonConstants.baseMediumPadding,
      ),
      CustomOutlinedButton(
        text: 'SIGN IN WITH APPLE',
        icon: Icons.apple_rounded,
        onPressed: () {},
      ),
      const SizedBox(
        height: CommonConstants.baseLargePadding,
      ),
      const PolicyRichText(),
    ];
  }
}
