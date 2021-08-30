import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class ProviderButton extends StatefulWidget {
  final BuildContext context;
  final String signInType;

  const ProviderButton({this.context, this.signInType});

  @override
  _ProviderButtonState createState() => _ProviderButtonState();
}

class _ProviderButtonState extends State<ProviderButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.signInType) {
      case 'google':
        return InkWell(
          onTap: () {
            context.signInWithGoogle();
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: LitAuthIcon.google(
              size: Size(30.0, 30.0),
            ),
          ),
        );
        break;

      //Apple doesnt work in android emulator
      case 'apple':
        return InkWell(
          onTap: () {
            context.signInWithApple();
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Transform.translate(
              offset: Offset(-1, 0),
              child: LitAuthIcon.appleBlack(
                size: Size(30.0, 30.0),
              ),
            ),
          ),
        );
        break;
      //Twitter doesnt work because twitter didnt allow to use of login
      case 'twitter':
        return InkWell(
          onTap: () {
            context.signInWithTwitter();
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Transform.scale(
              scale: 1.2,
              child: LitAuthIcon.twitter(
                size: Size(30.0, 30.0),
              ),
            ),
          ),
        );
        break;
      default:
        return Text('error');
    }
  }
}
