// Flutter imports:
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Center(
        child: Text('Auth Page'),
      ),
    );
  }
}
