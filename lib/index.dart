import 'package:flutter/material.dart';

class indexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: index(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '收啦商家端',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.error_outline),
        ),
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
              )
            ],
          ),
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
                    height: 140,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 142, 79, 1),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(242, 142, 79, 1),
                          Color.fromRGBO(243, 56, 91, 1)
                        ])),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/shangjiamoren.png',
                                    width: 100,
                                  ),
                                  Text(
                                    'Hi,XX商家名称',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 83),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      '已累计',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '68',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '张优惠券',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5, top: 5, right: 5),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/quan-lipin.png'),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  '京世商家沙龙（花桥店）',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  '2019-2-10至2019-2-10          ',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 0),
                                                      ),
                                                      Text(
                                                        '已领取70张         ',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                      Text(
                                                        '已消费20张',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 35, left: 65),
                                            child: Image.asset(
                                                'images/xiangyouxiayiye.png'),
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
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5, top: 5, right: 5),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/quan-manjian.png'),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  '京世商家沙龙（花桥店）',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  '2019-2-10至2019-2-10          ',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 0),
                                                      ),
                                                      Text(
                                                        '已领取70张         ',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                      Text(
                                                        '已消费20张',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 35, left: 65),
                                            child: Image.asset(
                                                'images/xiangyouxiayiye.png'),
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
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5, top: 5, right: 5),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/quan-tiyan.png'),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  '京世商家沙龙（花桥店）',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  '2019-2-10至2019-2-10          ',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 0),
                                                      ),
                                                      Text(
                                                        '已领取70张         ',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                      Text(
                                                        '已消费20张',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 35, left: 65),
                                            child: Image.asset(
                                                'images/xiangyouxiayiye.png'),
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
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding:
                                    EdgeInsets.only(left: 5, top: 5, right: 5),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 100,
                                      width: 400,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'images/quan-daijin.png'),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 120, top: 15),
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  '京世商家沙龙（花桥店）',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Text(
                                                  '2019-2-10至2019-2-10          ',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        153, 153, 153, 1),
                                                  ),
                                                ),
                                                Container(
                                                  child: Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 0),
                                                      ),
                                                      Text(
                                                        '已领取70张         ',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                      Text(
                                                        '已消费20张',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              153, 153, 153, 1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                top: 35, left: 65),
                                            child: Image.asset(
                                                'images/xiangyouxiayiye.png'),
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
//                        Image.asset('images/quan-manjian.png'),
//                        Image.asset('images/quan-tiyan.png'),
//                        Image.asset('images/quan-daijin.png'),
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
