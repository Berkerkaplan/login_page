import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:login_page/config/palette.dart';
import 'package:login_page/screens/home.dart';
import 'package:login_page/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(
        emailAndPassword: true,
        google: true,
        apple: true,
        twitter: true,
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.muliTextTheme(),
            accentColor: Palette.darkOrange,
            appBarTheme: AppBarTheme(
              brightness: Brightness.dark,
              color: Palette.darkBlue,
            )),
        // home: LitAuthState(
        //   authenticated: HomeScreen(),
        //   unauthenticated: AuthScreen(),
        // ),
        home: LitAuthState(
          authenticated: HomeScreen(),
          unauthenticated: SplashScreen(),
        ),
        // home:SplashScreen(),
      ),
    );
  }
}
