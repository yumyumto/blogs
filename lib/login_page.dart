import 'package:flutter/material.dart';
import 'package:flutter_blog/sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  Icon(Icons.login)
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
                    minimumSize: Size(200.0, 40.0)),
                child: Text(
                  "ورود به حساب",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignIn(),
                    ),
                  );
                },
              ),

              // button 2 sign in
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: Size(200.0, 40.0)),
                child: Text(
                  "ثبت نام",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
