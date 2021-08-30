import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:login_page/screens/auth/auth.dart';
import 'package:login_page/screens/home.dart';

class SplashScreen extends StatelessWidget {
  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => SplashScreen(),
      );
  @override
  Widget build(BuildContext context) {
    final user = context.watchSignedInUser();
    user.map(
      (value) {
        _navigateToHomeScreen(context);
      },
      empty: (_) {
        _navigateToAuthScreen(context);
      },
      initializing: (_) {},
    );
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

void _navigateToHomeScreen(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => Navigator.of(context).pushReplacement(HomeScreen.route),
  );
}

void _navigateToAuthScreen(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => Navigator.of(context).pushReplacement(AuthScreen.route),
  );
}
