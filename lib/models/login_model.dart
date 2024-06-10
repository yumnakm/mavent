import 'package:flutter/material.dart';

class LoginModel extends StatefulWidget {
  const LoginModel({super.key});

  @override
  State<LoginModel> createState() => _LoginModelState();
}

class _LoginModelState extends State<LoginModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text("Login"),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create a New Account ?",
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}