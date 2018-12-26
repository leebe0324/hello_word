import 'package:flutter/material.dart';
import 'package:hello_word/sign_in.dart';

class signIn2 extends StatelessWidget {
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
                new MaterialPageRoute(builder: (context) => new signIn()));
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
                                        '商家名称',
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
                                        controller: null,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: '填写商铺名称',
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
                                        '商家地址',
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
                                        controller: null,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: '商家地址',
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
                                        '联系人',
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
                                        controller: null,
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: '填写联系人',
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
                  Container(
                    padding: EdgeInsets.only(top: 90),
                    alignment: Alignment.center,
                    child: RaisedButton(
                      onPressed: () {
                        //todo 注册方法
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      elevation: 2.0,
                      color: Color.fromRGBO(255, 239, 63, 1),
                      padding: EdgeInsets.fromLTRB(165, 15, 165, 15),
                      child: Text(
                        '注册',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
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
