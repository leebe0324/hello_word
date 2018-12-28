import 'package:flutter/material.dart';
import 'package:hello_word/login.dart';
import 'package:hello_word/sign_in2.dart';
import 'package:hello_word/utils.dart';

class signIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: signInPage(),
      theme: ThemeData(primaryColor: Colors.white, fontFamily: 'PingFang'),
    );
  }
}

class signInPage extends StatelessWidget {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '注册',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new loginApp()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            color: Colors.black,
            onPressed: () {
              debugPrint('1');
            },
          )
        ],
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 10, bottom: 10),
                          child: Column(
                            children: <Widget>[
                              new Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        '手机号',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "PingFang",
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          110,
                                      padding:
                                          EdgeInsets.only(right: 0, left: 0),
                                      height: 50,
                                      child: TextField(
                                        controller: codeController,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          suffixIcon: RaisedButton(
                                            onPressed: () {},
                                            color: Colors.white,
                                            elevation: 0.0,
                                            child: Text(
                                              '发送验证码',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromRGBO(88, 188, 61, 1),
                                              ),
                                            ),
                                          ),
                                          hintText: '请输入手机号',
                                          hintStyle: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "PingFang",
                                              color: Color.fromRGBO(
                                                  204, 204, 204, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        '验证码',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "PingFang",
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          110,
                                      padding:
                                          EdgeInsets.only(right: 0, left: 0),
                                      height: 50,
                                      child: TextField(
                                        controller: codeController,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: '请输入验证码',
                                          hintStyle: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "PingFang",
                                              color: Color.fromRGBO(
                                                  204, 204, 204, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        '密码',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "PingFang",
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          110,
                                      padding:
                                          EdgeInsets.only(right: 0, left: 0),
                                      height: 50,
                                      child: TextField(
                                        controller: codeController,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: '输入密码',
                                          hintStyle: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "PingFang",
                                              color: Color.fromRGBO(
                                                  204, 204, 204, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        '确认密码',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "PingFang",
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          110,
                                      padding:
                                          EdgeInsets.only(right: 0, left: 0),
                                      height: 50,
                                      child: TextField(
                                        controller: codeController,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: '再次输入密码',
                                          hintStyle: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "PingFang",
                                              color: Color.fromRGBO(
                                                  204, 204, 204, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height:MediaQuery.of(context).size.height*0.07,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*0.055),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new signIn2()));
                        //todo 携带参数传递到下个页面
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      elevation: 4.0,
                      color: Color.fromRGBO(255, 239, 63, 1),
                      child: Text(
                        '下一步',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '点击注册，即表示您同意',
                          style: TextStyle(
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          elevation: 0.0,
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            '《用户协议》',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
