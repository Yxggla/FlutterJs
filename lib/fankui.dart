import 'package:flutter/material.dart';
class fankui extends StatefulWidget {
  @override
  fankuiState createState() => fankuiState();
}

class fankuiState extends State<fankui> {
  String feedbackText = '';
  final Textnr = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '意见反馈',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100.0),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('img/pic1.jpg'), // 替换为你的头像图片
              ),
              SizedBox(height: 40.0),
              Text(
                '您好！非常感谢您能向我们提供宝贵的意见反馈。我们会努力优化，给您带来更好的产品体验！',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '请问您有哪些意见~',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    feedbackText = value;
                  });
                },
                controller: Textnr,
                decoration: InputDecoration(
                  hintText: '请输入您的意见',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('提交'),
                onPressed: () {
                  _submitFeedback(feedbackText);
                  Textnr.clear();
                  setState(() {
                    feedbackText = '';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitFeedback(String feedback) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提交成功'),
          content: Text('感谢您的提交！'),
          actions: [
            ElevatedButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
