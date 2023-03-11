// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../routes/routes.dart';
import '../../shared/shared.dart';
import 'widgets/auth_widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GradientBackground(
      gradientStart: ColorConstants.lightGradientStart,
      gradientEnd: ColorConstants.lightGradientEnd,
      gradientRotation: CommonConstants.gradientRotation,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
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
        text: 'SIGN IN',
        onPressed: () {
          Get.toNamed(Routes.auth + Routes.login);
        },
      ),
      const SizedBox(
        height: CommonConstants.baseMediumPadding,
      ),
      CustomFilledButton(
        text: 'CREATE ACCOUNT',
        onPressed: () {
          Get.toNamed(Routes.auth + Routes.register);
        },
      ),
      const SizedBox(
        height: CommonConstants.baseLargePadding,
      ),
      const PolicyRichText(),
    ];
  }
}
