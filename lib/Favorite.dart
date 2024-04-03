import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_provider.dart';
import 'dongzuo1.dart';
import 'dongzuo2.dart';
import 'dongzuo3.dart';

class FavoritePage extends StatelessWidget {
  Map<String, Widget> buttonRoutes = {
    '杠铃卧推': dongzuo1(),
    '上斜杠铃卧推': dongzuo2(),
    '杠铃卧推（宽握距）': dongzuo3(),
  };
  @override
  Widget getPageRoute(String buttonText) {
    return buttonRoutes[buttonText] ?? Container();
  }
  Widget build(BuildContext context) {
    return Consumer<ButtonProvider>(
      builder: (context, buttonProvider, _) {
        List<String> buttonTextList = buttonProvider.favoriteList;
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('动作收藏',style: TextStyle(color: Colors.white,fontSize: 20)),
          ),
          body: Column(
            children: [
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: buttonTextList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 6.0),
                        ListTile(
                          title: Text(
                            buttonTextList[index],
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          onTap: () {
                            Widget route = getPageRoute(buttonTextList[index]);
                            if (route != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => route),
                              );
                            }
                          },
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(
                            color: Colors.grey,
                            height: 1.0,
                          ),
                        ),
                      ],
                    );

                  },
                ),
              ),
            ],
          ),

        );
      },
    );
  }
}
