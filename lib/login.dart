import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text("ورود"),
        backgroundColor: Colors.black,
        elevation: 1,
      ),
      body: SafeArea(
        child: Text("ورود"),
      ),
    );
  }
}
