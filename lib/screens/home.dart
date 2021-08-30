import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:login_page/screens/auth/auth.dart';

class HomeScreen extends StatelessWidget {
  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signed in'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            context.signOut();
            Navigator.of(context).push(AuthScreen.route);
          },
          child: Text('Sign out'),
        ),
      ),
    );
  }
}
