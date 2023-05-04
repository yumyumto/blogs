import 'package:flutter/material.dart';
import 'package:flutter_blog/custom_widget/custom_widget.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final List<Widget> itemBlogList = [
    getBlogPost(imageName: 'a', title: "برای 14 اردیبهشت SafeMoon خرید سیگنال"),
    getBlogPost(imageName: 'c', title: "برای 14 اردیبهشت SafeMoon خرید سیگنال"),
    getBlogPost(imageName: 'r', title: "برای 14 اردیبهشت SafeMoon خرید سیگنال"),
    getBlogPost(imageName: 's', title: "برای 14 اردیبهشت SafeMoon خرید سیگنال"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vip اخبار و سیگنال های"),
        backgroundColor: Colors.black,
        elevation: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...itemBlogList,
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("خروج از حساب"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
