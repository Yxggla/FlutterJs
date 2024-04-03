import 'package:flutter/material.dart';
class gengggai extends StatefulWidget {
  @override
  genggaiState createState() => genggaiState();
}

class genggaiState extends State<gengggai> {
  int _counter = 450;

  void _jia() {
    setState(() {
      _counter=_counter+10;
    });
  }

  void _jian() {
    setState(() {
      if (_counter > 0) {
        _counter=_counter-10;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('更改目标',
            style: TextStyle(
            )),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  '你的每日活动目标',
                  style: TextStyle(
                      fontSize: 34.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  '根据活跃度或期望活跃度设置每日目标',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 140.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: _jian,
                      iconSize: 30.0,
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Text(
                    '$_counter',
                    style: TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 30.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _jia,
                      iconSize: 30.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  '千卡/天',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 200.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: Size(350, 48),
                  backgroundColor: Colors.grey[800],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('更改活动目标',style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
