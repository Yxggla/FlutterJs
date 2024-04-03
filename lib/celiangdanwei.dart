import 'package:flutter/material.dart';

class Celiang extends StatefulWidget {
  @override
  CeliangState createState() => CeliangState();
}

class CeliangState extends State<Celiang> {
  List<List<bool>> itemSelectedList = [
    [false, true, false],
    [false, true],
    [false, true],
    [false, true],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '测量单位',
          style: TextStyle(),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "能量单位",
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 4.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800],
                  ),
                  child: Column(
                    children: [
                      buildListTile(0, '大卡', 0),
                      buildDivider(),
                      buildListTile(1, '千卡', 0),
                      buildDivider(),
                      buildListTile(2, '千焦', 0),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "泳池长度单位",
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800],
                  ),
                  child: Column(
                    children: [
                      buildListTile(0, '码', 1),
                      buildDivider(),
                      buildListTile(1, '米', 1),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "单车训练",
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800],
                  ),
                  child: Column(
                    children: [
                      buildListTile(0, '英里', 2),
                      buildDivider(),
                      buildListTile(1, '公里', 2),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "单车训练",
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800],
                  ),
                  child: Column(
                    children: [
                      buildListTile(0, '英里', 3),
                      buildDivider(),
                      buildListTile(1, '公里', 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(int index, String title, int listIndex) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      trailing: itemSelectedList[listIndex][index]
          ? Icon(
              Icons.check,
              color: Colors.green,
            )
          : null,
      onTap: () {
        setState(() {
          for (int i = 0; i < itemSelectedList[listIndex].length; i++) {
            if (i == index) {
              itemSelectedList[listIndex][i] = true;
            } else {
              itemSelectedList[listIndex][i] = false;
            }
          }
        });
      },
    );
  }

  Widget buildDivider() {
    return Container(
      height: 1.0,
      color: Colors.black12,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
    );
  }
}
