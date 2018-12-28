import 'package:flutter/material.dart';
import 'package:hello_word/utils.dart';
import 'dart:io';
import 'package:hello_word/createCoupon.dart';

class indexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: index(),
      theme: ThemeData(primaryColor: Colors.white, fontFamily: 'PingFang'),
    );
  }
}

class index extends StatelessWidget {
  getBottomHight(BuildContext context) {
    var _bottomHight = 50.0;
    if (Platform.isAndroid) {
      debugPrint("1");
      _bottomHight = 0.0;
    }
    return _bottomHight;
  }

  bool _haveCoupon(BuildContext context) {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[50],
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
                icon: Icon(Icons.add_circle_outline),
                color: Colors.black,
                onPressed: () {
                  debugPrint('1');
                },
              ),
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
        color: Colors.grey[100],
        child: Column(
          children: <Widget>[
            getMerchantContainer('京世美发沙龙', null, 35, context),
            Container(
              child: new Expanded(
                child: new CustomScrollView(
                  primary: true,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: EdgeInsets.all(0),
                      sliver: SliverList(
                        key: Key('couponList'),
                        delegate: SliverChildListDelegate(
                          <Widget>[
                            getCouponContainer(1, '2018-01-01至2018-01-01',
                                '清华科技园', '30', '10', context),
                            getCouponContainer(2, '2019-01-01至2019-01-01',
                                '工业研究院', '40', '20', context),
                            getCouponContainer(3, '2016-01-01至2016-01-01',
                                '清风华苑', '50', '30', context),
                            getCouponContainer(4, '2017-01-01至2017-01-01',
                                '京世美发沙龙（花桥店）', '60', '40', context),
                            getCouponContainer(4, '2017-01-01至2017-01-01',
                                '京世美发沙龙（花桥店）', '60', '40', context),
                            getCouponContainer(4, '2017-01-01至2017-01-01',
                                '京世美发沙龙（花桥店）', '60', '40', context),
                            getCouponContainer(4, '2017-01-01至2017-01-01',
                                '京世美发沙龙（花桥店）', '60', '40', context),
                            new Offstage(
                              key: Key('addCoupon'),
                              offstage: _haveCoupon(context),
                              child: new Container(
                                color: Colors.green,
                                padding: EdgeInsets.all(5),
                                child: new RaisedButton(
                                  elevation: 4.0,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new createCoupon()));
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                  ),
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      new Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.add,
                                              size: 34,
                                              color: Color.fromRGBO(
                                                  153, 153, 153, 1),
                                            ),
                                            Text(
                                              '添加优惠券',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromRGBO(
                                                      153, 153, 153, 1)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Container(
              child: IconButton(
                icon: Image.asset(
                  'images/saoyisao.png',
                ),
                iconSize: 80,
                onPressed: () {
                  debugPrint("11");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

test() {}
