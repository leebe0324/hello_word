import 'package:flutter/material.dart';
import 'package:hello_word/index.dart';

class createCouponApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createCoupon(),
      theme: ThemeData(primaryColor: Colors.grey[50]),
    );
  }
}

class createCoupon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '收啦商家端',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.sms),
                color: Colors.black,
                onPressed: () {
                  debugPrint('1');
                },
              ),
            ],
          ),
        ],
      ),
      body: new Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            new Expanded(
              child: new CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: EdgeInsets.all(0),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        <Widget>[
                          //下拉框
                          new Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '优惠券类型',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: _couponType(),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '优惠券信息',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                            hintText: '请输入金额',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '有效期',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          keyboardType: TextInputType.text,
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                            hintText: '有效期',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '发放次数',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: '输入数字',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //优惠券信息
                          new Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            padding: EdgeInsets.only(bottom: 10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '商家名称',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: '填写商家名称',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '商家地址',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: '填写商家地址',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '联系人名称',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          style: TextStyle(color: Colors.black),
                                          cursorColor: Colors.black,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: '填写联系人',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new Container(
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
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
                                            120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        height: 50,
                                        child: TextField(
                                          controller: null,
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
                                  padding: EdgeInsets.all(3),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100,
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '验证码',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "PingFang",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width - 120,
                                        padding: EdgeInsets.only(left: 15, right: 15),
                                        child: TextField(
                                          controller: null,
                                          style: TextStyle(color: Colors.black),
                                          keyboardType: TextInputType.number,
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                            hintText: '请输入验证码',
                                            hintStyle: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "PingFang",
                                                color: Color.fromRGBO(204, 204, 204, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(top: 42),
                            alignment: Alignment.center,
                            child: RaisedButton(
                              onPressed: () {
                                //todo 携带参数传递到下个页面
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              elevation: 4.0,
                              color: Color.fromRGBO(255, 239, 63, 1),
                              padding: EdgeInsets.fromLTRB(165, 15, 165, 15),
                              child: Text(
                                '提交',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
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
                                  color: Colors.grey[200],
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
            ),
          ],
        ),
      ),
    );
  }
}

class _couponType extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return couponTypeButton();
  }
}

class couponTypeButton extends State<_couponType> {
  List<DropdownMenuItem> getListData() {
    List<DropdownMenuItem> items = new List();
    for (var i = 0; i < 3; i++) {
      DropdownMenuItem d = new DropdownMenuItem(
        child: new Text(i.toString()),
        value: i.toString(),
      );
      items.add(d);
    }

    return items;
  }

  var value;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DropdownButton(
      items: getListData(),
      onChanged: (T) {
        setState(() {
          value = T;
        });
      },
      hint: Text('选择优惠券类型'),
      value: value,
      iconSize: 30,
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}
