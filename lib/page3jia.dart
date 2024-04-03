import 'package:flutter/material.dart';

class ThirdjiaPage extends StatefulWidget {
  const ThirdjiaPage({Key? key}) : super(key: key);

  @override
  ThirdPagejiaState createState() => ThirdPagejiaState();
}

class ThirdPagejiaState extends State<ThirdjiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.lightGreen,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('共享'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
            ),
            color: Colors.lightGreenAccent,
            onPressed: () {
              // 执行其他操作
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28.0),
            Center(
              child: Text(
                '了解数据的管理方式...',
                style: TextStyle(color: Colors.lightGreenAccent, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
