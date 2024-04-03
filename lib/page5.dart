import 'package:flutter/material.dart';
import 'package:qmdazuoye/fankui.dart';
import 'package:qmdazuoye/genggai.dart';
import 'jiankang.dart';
import 'celiangdanwei.dart';
import 'main.dart';
import 'fankui.dart';

class fifthpage extends StatelessWidget {
  final String phoneNumber;

  fifthpage({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('账户', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(2.0),
          child: Column(
            children: [
              SizedBox(height: 14),
              Align(
                alignment: Alignment.topLeft,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [Colors.lightGreen, Colors.cyan],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    '你好！$phoneNumber',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0), // 设置圆角半径
                  color: Colors.grey[800],
                ),
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16.0), // 减小垂直间距
                      title: Text('健康详细信息',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => jiankang()),
                        );
                      },
                    ),
                    Container(
                      height: 1.0,
                      color: Colors.black12,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16.0), // 减小垂直间距
                      title: Text('更改目标',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => gengggai()),
                        );
                      },
                    ),
                    Container(
                      height: 1.0,
                      color: Colors.black12,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    ListTile(
                      title: Text('测量单位',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16.0), // 减小垂直间距
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Celiang()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0), // 设置圆角半径
                  color: Color(0xFF404040),
                ),
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('分享给好友',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16.0), // 减小垂直间距
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey[600],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10.0),
                                  Text(
                                    '分享到',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.share),
                                        onPressed: () {},
                                      ),
                                      SizedBox(width: 136),
                                      IconButton(
                                        icon: Icon(Icons.favorite),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('微信好友'),
                                      SizedBox(width: 130),
                                      Text('朋友圈'),
                                    ],
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.close),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Container(
                      height: 1.0,
                      color: Colors.black12,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    ListTile(
                      title: Text('反馈中心',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16.0), // 减小垂直间距
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => fankui()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0), // 设置圆角半径
                  color: Colors.grey[800],
                ),
                margin: EdgeInsets.all(8.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('注销',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 16.0), // 减小垂直间距
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                          (route) => false,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
