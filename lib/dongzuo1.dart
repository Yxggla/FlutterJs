import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qmdazuoye/favorite_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class dongzuo1 extends StatefulWidget {
  const dongzuo1({Key? key}) : super(key: key);

  @override
  dongzuo1State createState() => dongzuo1State();
}

class dongzuo1State extends State<dongzuo1> {
  late SharedPreferences _prefs;
  bool isFavorite= false;

  @override
  void initState() {
    super.initState();
    _loadFavoriteState();
  }
  Future<void> _loadFavoriteState() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = _prefs.getBool('dongzuo1_favorite') ?? false;
    });
  }
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'img/pic2.jpg',
                  width: 320,
                  height: 320,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Text(
                    '杠铃卧推',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 220),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      size: 30,
                    ),
                    onPressed: () async {
                      setState(() {
                        isFavorite = !isFavorite;
                      }
                      );
                      await _prefs.setBool('dongzuo1_favorite', isFavorite);
                      ButtonProvider buttonProvider = Provider.of<ButtonProvider>(context, listen: false);
                      if (isFavorite) {
                        buttonProvider.addToFavorite('杠铃卧推');
                      } else {
                        buttonProvider.removeFromFavorite('杠铃卧推');
                      }
                    },
                    color: isFavorite ? Colors.redAccent : Colors.white,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    iconSize: 30,
                  ),

                ],
              ),
              SizedBox(height: 14.0),
              Text(
                '步骤',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14.0),
              Text(
                '1.杠铃位于眼睛正上方，双手比肩稍宽握住杠铃；双脚踩实地面，臀部收紧，绷紧腹部，保持核心稳定，肩胛骨后缩下沉，上背平贴凳子',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '2.出杠时，吸气憋住，发力将杠铃移至锁骨正上方；',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '3. 呼气，缓慢下落至胸肌正上方，杠铃与身体间隔1-2厘米左右',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '4.在动作最底端稍作停留，胸肌发力推起至锁骨正上方，挤压胸部，全程保持身体稳定',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '呼吸',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14.0),
              Text(
                '1.推起时呼气，下落时吸气',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '2.在推起大重量时，下落和推起过程中全程憋气，在最高点再调整呼吸，避免泄力',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '注意点',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14.0),
              Text(
                '1.在最低点时，胸部有较强拉伸感',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '2.发力时，胸部主动收缩发力',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '常见错误',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 14.0),
              Text(
                '1.【错误】推起时，肩膀借力，肩膀已经酸痛，胸部还没有感觉【解决】肩胛骨始终保持后缩下沉，保持上背部平贴凳子',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '2.【错误】推起后肘关节超伸锁定，导致肘关节撞击，长期容易出现肘关节损伤 【解决】 推起到最高点时，肘关节保持微屈，不要完全锁死伸直',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '3.【错误】 手腕有痛感？【解决】手腕全程保持中立位，避免扣腕和翻腕，并且全握杠铃，避免半握发生危险！',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
