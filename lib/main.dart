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
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => SecendPage(),
                ),
              );
            },
            child: Text(
              "ثبت نام",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                minimumSize: Size(200.0, 40.0),
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white, width: 2.0)),
            onPressed: () {},
            child: Text("Hello"),
          ),
        ],
      )),
    );
  }
}

class SecendPage extends StatelessWidget {
  const SecendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            child: Text("SecendPage"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
