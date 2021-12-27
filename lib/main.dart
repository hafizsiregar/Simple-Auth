import 'package:flutter/material.dart';
import 'package:project_kelas/auth/sign_in.dart';
import 'package:project_kelas/auth/sign_up.dart';
import 'package:project_kelas/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/sign-in' : (context) => SignInPage(),
        '/sign-up' : (context) => SignUpPage()
      },
      home: SplashPage()
    );
  }
}

