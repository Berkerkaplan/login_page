import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:login_page/screens/auth/decoration_functions.dart';
import 'package:login_page/screens/auth/provider_button.dart';
import 'package:login_page/screens/auth/sign_in_up_bar.dart';
import 'package:login_page/screens/auth/title.dart';

class SignIn extends StatelessWidget {
  final VoidCallback onRegisterClicked;

  const SignIn({this.onRegisterClicked});
  @override
  Widget build(BuildContext context) {
    final isSubmitting = context.isSubmitting();
    return SignInForm(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: LoginTitle(
                  title: 'Welcome\nBack',
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: EmailTextFormField(
                      decoration: signInInputDecoration(hintText: 'Email'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: PasswordTextFormField(
                      decoration: signInInputDecoration(hintText: 'Password'),
                    ),
                  ),
                  SignInBar(
                    isLoading: isSubmitting,
                    label: 'Sing in',
                    onPressed: () {
                      context.signInWithEmailAndPassword();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                //Use flex in here because when keyboard come to up it is overloaded.
                child: Column(
                  children: [
                    Text(
                      'or sign in with',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProviderButton(
                          context: context,
                          signInType: 'google',
                        ),
                        ProviderButton(
                          context: context,
                          signInType: 'apple',
                        ),
                        ProviderButton(
                          context: context,
                          signInType: 'twitter',
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        onRegisterClicked?.call();
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'SIGN UP',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
