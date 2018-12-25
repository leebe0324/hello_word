import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_word/sign_in.dart';
import 'package:hello_word/index.dart';

void main() => runApp(loginApp());

class loginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      theme: ThemeData(primaryColor: Colors.white),
      routes: {
        'sign_in': (BuildContext context) => sign_in(),
      },
    );
  }
}

class login extends StatelessWidget {
  //手机号控制器
  TextEditingController phoneController = TextEditingController();

  //密码控制器
  TextEditingController passwordController = TextEditingController();

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
                      fontSize: 40,
                      color: Colors.white,
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
                padding: EdgeInsets.all(10),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      //输入框开始
                      new Container(
                        margin: const EdgeInsets.only(top: 430),
                        child: Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Column(children: <Widget>[
                                //手机号框
                                new TextField(
                                  controller: phoneController,
                                  key: Key('phoneNumber'),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(7),
                                    icon: new Text(
                                      '手机号码',
                                      style: new TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    hintText: '请输入手机号',
                                    hintStyle:
                                        new TextStyle(color: Colors.white54),
                                  ),
                                ),
                                //手机号框结束
                                //密码框
                                new TextField(
                                  controller: passwordController,
                                  key: Key('password'),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(7),
                                    icon: new Text(
                                      '密码        ',
                                      style: new TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    hintText: '请输入密码',
                                    hintStyle:
                                        new TextStyle(color: Colors.white54),
                                  ),
                                ),
                                //密码框结束
                              ]),
                            ),
                            //输入框结束
                            //按钮开始
                            new Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  //登陆按钮开始
                                  Container(
                                    margin:
                                        EdgeInsets.only(bottom: 10, top: 10),
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                            new MaterialPageRoute(builder: (context) => new indexApp()));
                                        //todo 验证用户名密码，跳转到主页面 首次登陆后记录用户密码自动登陆
                                      },
                                      elevation: 4.0,
                                      color: Color.fromRGBO(255, 239, 63, 1),
                                      splashColor: Colors.black12,
                                      child: Text(
                                        '登陆',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      padding:
                                          EdgeInsets.fromLTRB(165, 15, 165, 15),
                                    ),
                                  ),
                                  //登陆按钮结束
                                  //注册按钮开始
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
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
                                                    new sign_in()));
                                      },
                                      elevation: 4.0,
                                      color: Color.fromRGBO(240, 240, 240, 1),
                                      splashColor: Colors.black12,
                                      child: Text(
                                        '注册',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      padding:
                                          EdgeInsets.fromLTRB(165, 15, 165, 15),
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
