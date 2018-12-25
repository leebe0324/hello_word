import 'package:flutter/material.dart';
import 'package:hello_word/login.dart';
import 'package:hello_word/sign_in2.dart';

class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: sign(),
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class sign extends StatelessWidget {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
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
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 20),
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  icon: Text(
                                    '手机号    ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
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
                                  hintText: "填写手机号码",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(204, 204, 204, 1)),
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  icon: Text(
                                    '验证码    ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  hintText: "输入验证码",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(204, 204, 204, 1)),
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: Text(
                                    '密码        ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  hintText: "输入密码",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(204, 204, 204, 1)),
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: Text(
                                    '确认密码',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  hintText: "再次输入密码",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(204, 204, 204, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 42),
                    alignment: Alignment.center,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new sign_in2()));
                                //todo 携带参数传递到下个页面
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      elevation: 4.0,
                      color: Color.fromRGBO(255, 239, 63, 1),
                      padding: EdgeInsets.fromLTRB(160, 11, 160, 11),
                      child: Text(
                        '下一步',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
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
