import 'package:flutter/material.dart';
import 'page3jia.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  ThirdPageState createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.person_add),
            color: Colors.lightGreenAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (ThirdjiaPage())),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '共享',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '共享“健身记录”',
                    style: TextStyle(color: Colors.white, fontSize: 28,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    '轻点上方按钮来邀请他人与你共享"健身记录"。',
                    style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                '了解数据的管理方式...',
                style: TextStyle(color: Colors.lightGreenAccent, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),




    );
  }
}
