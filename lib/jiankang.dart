import 'package:flutter/material.dart';
class jiankang extends StatefulWidget {
  @override
  jiankangState createState() => jiankangState();
}

class jiankangState extends State<jiankang> {
  bool isSwitched = false;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1920),
      lastDate: DateTime(2024),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('健康详细信息',
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
                '个性化"健身"和"健康"',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Text(
                  '此类信息可确保"健身"和"健康"数据尽可能准确。这些详细信息不会与别人共享。',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[800],
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                      title: Text('出生日期', style: TextStyle(fontSize: 18, color: Colors.white)),
                      trailing: InkWell(
                        onTap: () => _selectDate(context),
                        child: Text(
                          '${selectedDate.year}年${selectedDate.month}月${selectedDate.day}日',
                          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    Container(
                      height: 1.0, // 设置容器高度作为分割线的厚度
                      color: Colors.black12, // 设置分割线的颜色
                      margin: EdgeInsets.symmetric(horizontal: 16.0), // 控制间隔大小
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                      title: Text('性别',style: TextStyle(fontSize: 18,color: Colors.white)),
                      trailing: Text('男',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                    ),
                    Container(
                      height: 1.0, // 设置容器高度作为分割线的厚度
                      color: Colors.black12, // 设置分割线的颜色
                      margin: EdgeInsets.symmetric(horizontal: 16.0), // 控制间隔大小
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                      title: Text('身高',style: TextStyle(fontSize: 18,color: Colors.white)),
                      trailing: Text('177厘米',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                    ),
                    Container(
                      height: 1.0, // 设置容器高度作为分割线的厚度
                      color: Colors.black12, // 设置分割线的颜色
                      margin: EdgeInsets.symmetric(horizontal: 16.0), // 控制间隔大小
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                      title: Text('体重',style: TextStyle(fontSize: 18,color: Colors.white)),
                      trailing: Text('72千克',style: TextStyle(fontSize: 16,color: Colors.grey[600]),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[800],
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                  title: Text('轮椅', style: TextStyle(fontSize: 18, color: Colors.white)),
                  trailing: Switch(
                    value: isSwitched,
                    onChanged: (newValue) {
                      setState(() {
                        isSwitched = newValue;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.white,
                  ),
                )
              ),
              SizedBox(height: 96.0),
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
                child: Text('完成'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
