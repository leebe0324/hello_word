import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_word/sign_in.dart';
import 'package:hello_word/index.dart';
import 'dart:io';

void main() => runApp(loginApp());

class loginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      theme: ThemeData(primaryColor: Colors.white, fontFamily: 'PingFang'),
      routes: {
        'sign_in': (BuildContext context) => signIn(),
      },
    );
  }
}

class login extends StatelessWidget {
  //手机号控制器
  TextEditingController phoneController = TextEditingController();

  //密码控制器
  TextEditingController passwordController = TextEditingController();

  getBottomHight(BuildContext context) {
    var _bottomHight = 0.0;
    if (Platform.isAndroid) {
      debugPrint("1");
      _bottomHight = MediaQuery.of(context).size.height - 260;
    } else {
      _bottomHight = MediaQuery.of(context).size.height - 330;
    }
    return _bottomHight;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('images/bg-denglu.png'),
                  fit: BoxFit.fitWidth),
            ),
            child: Column(
              children: <Widget>[
                new Container(
                  height: 84,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 110,
                  ),
                  child: new Text(
                    '收啦商家端',
                    style: new TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontFamily: 'PingFang',
                      letterSpacing: 4.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.all(0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      //输入框开始
                      new Container(
                        margin: EdgeInsets.only(top: getBottomHight(context)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Container(
                              child: Column(
                                children: <Widget>[
                                  new Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width: 85,
                                          margin: EdgeInsets.only(left: 20),
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '手机号码',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "PingFang",
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              105,
                                          padding: EdgeInsets.only(
                                              right: 15, left: 15),
                                          height: 50,
                                          child: TextField(
                                            controller: phoneController,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: '请输入手机号码',
                                              hintStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "PingFang",
                                                  color: Colors.white54),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width: 85,
                                          margin: EdgeInsets.only(left: 20),
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            '密码',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: "PingFang",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              105,
                                          padding: EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: TextField(
                                            controller: passwordController,
                                            style:
                                                TextStyle(color: Colors.white),
                                            cursorColor: Colors.white,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              hintText: '请输入密码',
                                              hintStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "PingFang",
                                                  color: Colors.white54),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //按钮开始
                            new Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //登陆按钮开始
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 20,
                                    margin:
                                        EdgeInsets.only(top: 20, bottom: 10),
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    new indexApp()));
                                        //todo 验证用户名密码，跳转到主页面 首次登陆后记录用户密码自动登陆
                                      },
                                      elevation: 4.0,
                                      color: Color.fromRGBO(255, 239, 63, 1),
                                      splashColor: Colors.black12,
                                      child: Text(
                                        '登  录',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: "PingFangSC-Regular",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      padding:
                                          EdgeInsets.fromLTRB(160, 10, 160, 10),
                                    ),
                                  ),
                                  //登陆按钮结束
                                  //注册按钮开始
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 20,
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      onPressed: () {
                                        //debugPrint(passwordController.text);
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) =>
                                                    new signIn()));
                                      },
                                      elevation: 4.0,
                                      color: Color.fromRGBO(240, 240, 240, 1),
                                      splashColor: Colors.black12,
                                      child: Text(
                                        '注  册',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: "PingFangSC-Regular",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      padding:
                                          EdgeInsets.fromLTRB(160, 10, 160, 10),
                                    ),
                                  ),
                                  //注册按钮结束
                                ],
                              ),
                            ),
                            //按钮结束
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
