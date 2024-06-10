import 'package:flutter/material.dart';
import 'package:mavent/app/resources/named_routes.dart';
import 'package:mavent/ui/pages/login_page.dart';
 
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
      onGenerateRoute: (RouteSettings settings)  {
        switch (settings.name) {
          case NamedRoutes.loginScreen:
          return MaterialPageRoute(builder: (context) => const LoginPage());
        default:
          return MaterialPageRoute(builder: (context) => const LoginPage());
        }
      },
    );
  }
}