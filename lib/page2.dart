import 'package:flutter/material.dart';
import 'dongzuo1.dart';
import 'dongzuo2.dart';
import 'dongzuo3.dart';
import 'Favorite.dart';

class Exercise {
  final String name;
  final List<String> variations;

  Exercise({required this.name, required this.variations});
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  final List<Exercise> exercises = [
    Exercise(name: '胸', variations: ['杠铃推举', '上斜杠铃推举', '杠铃卧推（宽握距）','下斜杠铃卧推','杠铃片夹胸']),
    Exercise(name: '背', variations: ['俯身杠铃划船', '反握俯身杠铃划船', '地雷杆单手划船','架上硬拉','俯卧杠铃上斜划船','T杆划船']),
    Exercise(name: '腿', variations: ['深蹲', '颈前深蹲', '硬拉','相扑位硬拉','六角杆杠铃硬拉','泽奇深蹲','杠铃哈克深蹲','杠铃罗马尼亚硬拉','高翻','杠铃直腿硬拉','保加利亚蹲','杠铃箭步蹲','杰夫森深蹲','宽距深蹲']),
    Exercise(name: '肩', variations: ['杠铃前平举', '杠铃直立划船', '杠铃片旋转','杠铃片前平举','站姿杠铃推举','站姿交替推举','站姿颈后杠铃推举','坐姿杠铃推举']),
    Exercise(name: '斜方肌', variations: ['杠铃耸肩', '杠铃背后耸肩', '抓举耸肩','杠铃过头耸肩','杠铃过头耸肩','哑铃上斜俯卧耸肩','哑铃上斜仰卧耸肩','哑铃耸肩','史密斯耸肩','史密斯背后耸肩']),
    Exercise(name: '二头', variations: ['牧师凳弯举起', '蜘蛛弯举', '杠铃弯举','反手杠铃弯举','杠铃集中弯举','哑铃弯举','单手牧师凳弯举','哑铃轮换弯举','坐姿哑铃弯举','牧师凳锤式弯举','牧师凳左特曼弯举','锤式弯举','集中弯举']),
  ];

  int selectedExerciseIndex = 0;

  void updateSelectedExerciseIndex(int index) {
    setState(() {
      selectedExerciseIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '运动库',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoritePage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 14.0),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: exercises.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            updateSelectedExerciseIndex(index);
                          },
                          child: Container(
                            color: index == selectedExerciseIndex ? Colors.red : null,
                            child: ListTile(
                              title: Text(
                                exercises[index].name,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.black,
                      child: ListView.separated(
                        itemCount: exercises[selectedExerciseIndex].variations.length,
                        itemBuilder: (BuildContext context, int index) {
                          final nr = exercises[selectedExerciseIndex].variations[index];
                          return ListTile(
                            title: Text(
                              nr,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            onTap: () {
                              if (nr == '杠铃推举') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => dongzuo1()),
                                );
                              } else if (nr == '上斜杠铃推举') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => dongzuo2()),
                                );
                              } else if (nr == '杠铃卧推（宽握距）') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => dongzuo3()),
                                );
                              }
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: Colors.white,
                            thickness: 0.5,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
