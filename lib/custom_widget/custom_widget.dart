import 'package:flutter/material.dart';


getBlogPost({required String imageName, required String title}) {
  return Column(
    children: [
      // 2
      Padding(
        padding: EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Center(
            child: Image(
              image: AssetImage('images/$imageName.png'),
            ),
          ),
        ),
      ),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: [
          Icon(Icons.add_card_outlined),
          SizedBox(width: 5),
          Text(
            'خرید از : 1200',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w800,
                color: Colors.green),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.sell_outlined),
          SizedBox(width: 5),
          Text(
            'فروش از : 1500',
            style: TextStyle(
                fontSize: 14.0, fontWeight: FontWeight.w800, color: Colors.red),
          ),
        ],
      ),
      Container(
        width: 300,
        child: Divider(
          height: 25,
          thickness: 1,
          color: Colors.black,
        ),
      ),
    ],
  );
}
