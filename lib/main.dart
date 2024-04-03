import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'zhuye.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'package:provider/provider.dart';
import 'favorite_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化 SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setBool('dongzuo1_favorite', false);
  await prefs.setBool('dongzuo2_favorite', false);
  await prefs.setBool('dongzuo3_favorite', false);

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ButtonProvider>(
          create: (_) => ButtonProvider(),
        ),
      ],
      child: MaterialApp(
        title: '1210283019董一孝',
        home: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _currentIndex = 3;
  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      FirstPage(),
      SecondPage(),
      ThirdPage(),
      FourthPage(onUpdateData: (index, value) {
        updateData(3, value);
      }),
    ]);
  }

  void updateData(int index, Widget newValue) {
    setState(() {
      _pages[index] = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Colors.black,
      ),
      body:  _pages[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
          primaryColor: Colors.lightGreenAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.lightGreenAccent),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            debugPrint(_pages.toString());
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.lightGreenAccent,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),

              label: '概要',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center,),
              label: '动作库',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share,),
              label: '共享',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '个人中心',
            ),
          ],
        ),
      ),
    );
  }
}

