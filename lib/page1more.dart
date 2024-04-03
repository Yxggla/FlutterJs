import 'package:flutter/material.dart';
import 'page1list1.dart';
import 'page1list2.dart';
import 'page1list3.dart';

class FirstPagemore extends StatefulWidget {
  const FirstPagemore({Key? key}) : super(key: key);

  @override
  FirstPagemoreState createState() => FirstPagemoreState();
}

class FirstPagemoreState extends State<FirstPagemore> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.lightGreenAccent),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              Text(
                '全部体能训练',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ],
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '体能训练',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                '2023年5月',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Table(
                defaultColumnWidth: FixedColumnWidth(110.0),
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(''),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('累计',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('平均',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('体能训练',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('3',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child:Align(
                            alignment: Alignment.centerLeft,
                            child: Text(''),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('时间',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('1:41:05',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('0:33:41',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('千卡',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('514千卡',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('171千卡',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20.0),
              _buildContainer(),
              SizedBox(height: 10.0),
              _buildContainer2(),
              SizedBox(height: 10.0),
              _buildContainer3(),
              SizedBox(height: 30.0),
              Text(
                '2023年4月',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Table(
                defaultColumnWidth: FixedColumnWidth(110.0),
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(''),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('累计',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('平均',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('体能训练',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('7',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child:Align(
                            alignment: Alignment.centerLeft,
                            child: Text(''),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('时间',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('7:23:26',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('1:03:20',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('千卡',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('1866千卡',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          color: Colors.black,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('266千卡',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              _buildContainer4(),
              SizedBox(height: 10.0),
              _buildContainer5(),

            ],
          ),
        ),
      ),
    );
  }
  Widget _buildContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstPagelist1()),
        );
      },
      child: SizedBox(
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '户外步行',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '0.85公里',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          '星期四',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer2() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstPagelist2()),
        );
      },
      child: SizedBox(
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '户外步行',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '2.18公里',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          '2023/5/13',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildContainer3() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstPagelist3()),
        );
      },
      child: SizedBox(
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '交叉训练',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '365千卡',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          '2023/5/13',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildContainer4() {
    return GestureDetector(
      onTap: () {

      },
      child: SizedBox(
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '户外步行',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '3.39公里',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          '2023/4/28',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildContainer5() {
    return GestureDetector(
      onTap: () {
      },
      child: SizedBox(
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[800],
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '户外跑步',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '2.00公里',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Text(
                          '2023/4/20',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}