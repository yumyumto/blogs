import 'package:flutter/material.dart';
import 'package:flutter_blog/password_forget.dart';
import 'package:flutter_blog/sign_in.dart';
import 'package:flutter_blog/login.dart';

class LoginAndSignInPage extends StatelessWidget {
  const LoginAndSignInPage({super.key});

  void navigateToLogin(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "خوش آمدید",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(Icons.login),
                ],
              ),
              Image(
                image: AssetImage("images/welcome.png"),
              ),

              // button 1 sign up
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: BorderSide(width: 2.0, color: Colors.black),
                  minimumSize: Size(250.0, 40.0),
                ),
                child: Text(
                  "ورود به حساب",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                onPressed: () {
                  navigateToLogin(context, Login());
                },
              ),

              // button 2 sign in
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: Size(250.0, 40.0)),
                child: Text(
                  "ثبت نام",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900),
                ),
                onPressed: () {
                  navigateToLogin(context, SignIn());
                },
              ),

              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Text("فراموشی رمز عبور"),
                onPressed: () {
                  navigateToLogin(context, ForgetPassword());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
