import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text("بازیابی رمز عبور"),
        backgroundColor: Colors.black,
        elevation: 1,
      ),
      body: SafeArea(
        child: Center(
          child: Text("بازیابی رمز عبور"),
        ),
      ),
    );
  }
}
