import 'package:flutter/material.dart';
import 'page5.dart';
import 'main.dart';
import 'databaseHelper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FourthPage extends StatefulWidget {
  final void Function(int index, Widget newValue) onUpdateData;

  const FourthPage(
      {Key key = const ValueKey(4), this.onUpdateData = _defaultUpdateData})
      : super(key: key);

  static void _defaultUpdateData(int index, Widget newValue) {}

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  final _formKey = GlobalKey<FormState>();
  bool _agreeTerms = false;
  final phoneNumber = TextEditingController();
  final dlpassword = TextEditingController();

  void _updateList() {
    widget.onUpdateData(3, fifthpage(phoneNumber: phoneNumber.text));
  }

  final DatabaseHelper databaseHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                'Welcome',
                style: TextStyle(
                  foreground: Paint() //渐变样式
                    ..shader = LinearGradient(
                      colors: [Colors.lightGreen, Colors.cyan],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(Rect.fromLTWH(0, 0, 100, 0)), //创建矩形控制区域
                  fontSize: 54.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '用户名(要先注册',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), //没点到的时候
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), //点到的时候
                  ),
                ),
                keyboardType: TextInputType.phone,
                controller: phoneNumber,
                //链接获取值
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入电话号码';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '密码(要先注册',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                controller: dlpassword,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入密码';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Theme(
                    data: ThemeData(
                      accentColor: Colors.white,
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: Radio(
                      value: true,
                      groupValue: _agreeTerms,
                      onChanged: (value) {
                        setState(() {
                          _agreeTerms = value!;
                        });
                      },
                    ),
                  ),
                  Text('我已阅读并同意', style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('用户协议'),
                            content: Text('这里是用户协议的内容。'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('关闭'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('用户协议'),
                  ),
                  Text('和', style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('隐私政策'),
                            content: Text('这里是隐私政策的内容。'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('关闭'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('隐私政策'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && _agreeTerms) {
                    String username = phoneNumber.text.trim();
                    String password = dlpassword.text.trim();
                    databaseHelper.getUserByUsername(username).then((user) {
                      if (user != null && user['password'] == password) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('登录成功'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('进入'),
                                  onPressed: () {
                                    _updateList();
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('登录失败'),
                              content: Text('用户名或密码错误。'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('关闭'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                      databaseHelper.getAllUsers().then((List<Map<String, dynamic>> users) {
                        print('数据库中的所有内容：');
                        for (var user in users) {
                          print('用户名：${user['username']}，密码：${user['password']}');
                        }
                      });
                    });
                  } else if(_formKey.currentState!.validate()==false){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('错误'),
                          content: Text('请输入账号密码。'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('关闭'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }

                  else if(_agreeTerms==false ) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('错误'),
                          content: Text('请同意用户协议和隐私政策。'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('关闭'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }

                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightGreen, Colors.cyan],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text(
                      '登录',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text('如果没有账号', style: TextStyle(color: Colors.white)),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 60.0),
              //Text('开发人员：数字媒体中本211 1210283019 董一孝', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _agreeTerms = false;
  String _username = '';
  String _password1 = '';
  String _confirmPassword1 = '';

  void _register(username, password) async {
    await DatabaseHelper().insertUser(username, password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30.0),
              Text(
                '注册',
                style: TextStyle(
                  foreground: Paint() //渐变样式
                    ..shader = LinearGradient(
                      colors: [Colors.lightGreen, Colors.cyan],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(Rect.fromLTWH(0, 0, 100, 0)), //创建矩形控制区域
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '用户名',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), //没点到的时候
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), //点到的时候
                  ),
                ),
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入电话号码';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '密码',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入密码';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _password1 = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '请再次输入密码',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入密码';
                  }
                  if (_password1 != _confirmPassword1) {
                    return '密码不一致';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _confirmPassword1 = value;
                  });
                },
              ),
              Row(
                children: [
                  Theme(
                    data: ThemeData(
                      accentColor: Colors.white,
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: Radio(
                      value: true,
                      groupValue: _agreeTerms,
                      onChanged: (value) {
                        setState(() {
                          _agreeTerms = value!;
                        });
                      },
                    ),
                  ),
                  Text('我已阅读并同意', style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('用户协议'),
                            content: Text('这里是用户协议的内容。'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('关闭'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('用户协议'),
                  ),
                  Text('和', style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('隐私政策'),
                            content: Text('这里是隐私政策的内容。'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('关闭'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('隐私政策'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate() &&
                      _agreeTerms &&
                      _password1 == _confirmPassword1) {
                    _register(_username, _password1);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('注册成功'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('关闭'),
                                onPressed: () {
                                  Navigator.of(context).popUntil((route) => route.isFirst);
                                },
                              ),
                            ],
                          );
                        });

                  } else if (_password1 != _confirmPassword1) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('错误'),
                          content: Text('两次密码输入不相同'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('关闭'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else if (!_agreeTerms) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('错误'),
                          content: Text('请同意用户协议和隐私政策。'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('关闭'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  };

                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightGreen, Colors.cyan],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text(
                      '注册',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
