import 'package:flutter/material.dart';
import 'package:mavent/ui/pages/home_page.dart';
import 'package:mavent/ui/pages/login_page.dart';
import 'package:mavent/ui/pages/signup_page.dart';
 
 //ini main lah ya

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mavent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'PlusJakartaSans',
      ),
      home: LoginPage(), 
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/event_homepage': (context) => HomePage(),
      },
    );
  }
}
