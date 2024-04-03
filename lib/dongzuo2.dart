import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qmdazuoye/favorite_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class dongzuo2 extends StatefulWidget {
  const dongzuo2({Key? key}) : super(key: key);

  @override
  dongzuo2State createState() => dongzuo2State();
}

class dongzuo2State extends State<dongzuo2> {
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
      isFavorite = _prefs.getBool('dongzuo2_favorite') ?? false;
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
                  'img/pic3.jpg',
                  width: 320,
                  height: 320, 
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Text(
                    '上斜杠铃卧推',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 190),
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
                      await _prefs.setBool('dongzuo2_favorite', isFavorite);
                      ButtonProvider buttonProvider = Provider.of<ButtonProvider>(context, listen: false);
                      if (isFavorite) {
                        buttonProvider.addToFavorite('上斜杠铃卧推');
                      } else {
                        buttonProvider.removeFromFavorite('上斜杠铃卧推');
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
                '1.上斜杠铃卧推是一个复合型动作，有助于增理上胸以及肱三头肌。',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '2.躺在上斜凳上，双脚平放在地面，背部稍微弓起，肩胛骨收缩；',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '3.采用正握法中等握距，将杠铃从杠铃架上举起到胸前上方；',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '4.保持挺胸，肘部缓慢弯曲，将杠铃下放至接近胸部，背阔肌保持紧绷；',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '5.然后用胸部发力，快速将杠铃推回起始位置。',
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
              SizedBox(height: 8.0),
              Text(
                '3.过程中，小臂总是垂直地面',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '4.上斜椅角度一般在45度左右，可根据自己的感受调整',
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
                '1.【错误】 推起时，肩膀借力，肩膀已经酸痛，胸部还没有感【解决】 肩胛骨始终保持后缩下沉，保持上背部平贴凳子',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '2.【错误】 推起后肘关节超伸锁定，导致肘关节撞击，长期容易出现肘关节损伤 【解决】 推起到最高点时，肘关节保持微屈，不要完全锁死伸直',
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
