import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "vazir"),
      home: HoemScreen(),
    );
  }
}

class HoemScreen extends StatelessWidget {
  const HoemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "خوش آمدید",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
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
                "ثبت نام",
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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: BorderSide(width: 2.0, color: Colors.white),
                  minimumSize: Size(200.0, 40.0)),
              child: Text(
                "ورود",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text("ثبت نام"),
        backgroundColor: Colors.black,
        elevation: 1,
      ),
      body: SafeArea(
        child: Text(""),
      ),
    );
  }
}
