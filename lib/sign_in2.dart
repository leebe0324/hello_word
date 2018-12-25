import 'package:flutter/material.dart';
import 'package:hello_word/sign_in.dart';

class sign_in2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: sign2(),
      theme: ThemeData(primaryColor: Colors.grey[100]),
    );
  }
}

class sign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                new MaterialPageRoute(builder: (context) => new sign_in()));
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
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  icon: Text(
                                    '商家名称    ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  hintText: "请输入名称",
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
                                    '商家地址    ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  hintText: "请输入地址",
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
                                    '联系人姓名',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                  hintText: "请输入联系人名称",
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
                        //todo 注册方法
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      elevation: 4.0,
                      color: Color.fromRGBO(255, 239, 63, 1),
                      padding: EdgeInsets.fromLTRB(160, 11, 160, 11),
                      child: Text(
                        '注册',
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
