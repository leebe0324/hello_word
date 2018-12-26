import 'package:flutter/material.dart';

getCouponContainer(var coupon, var time, var name, var getCount, var useCount) {
  var images = '';
  var daijin = 'images/quan-daijin.png';
  var lipin = 'images/quan-lipin.png';
  var manjian = 'images/quan-manjian.png';
  var tiyan = 'images/quan-tiyan.png';
  switch (coupon) {
    case 1:
      images = daijin;
      break;
    case 2:
      images = lipin;
      break;
    case 3:
      images = manjian;
      break;
    case 4:
      images = tiyan;
      break;
  }
  return new Container(
    height: 95,
    width: 400,
    margin: EdgeInsets.only(left: 5, top: 5, right: 5),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('$images'), fit: BoxFit.fill),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 120, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$name',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '$time',
                style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                    ),
                    Text(
                      '已领取$getCount张         ',
                      style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1),
                      ),
                    ),
                    Text(
                      '已消费$useCount张',
                      style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 45),
          child: Image.asset('images/xiangyouxiayiye.png'),
        ),
      ],
    ),
  );
}

getMerchantContainer(var name, var headUrl, var count,BuildContext context) {
  var url = '';
  if (headUrl == null || headUrl == "") {
    url = 'images/shangjiamoren.png';
  } else {
    url = headUrl;
  }
  return new Container(
    height: MediaQuery.of(context).size.height*0.2,
    decoration: BoxDecoration(
        color: Color.fromRGBO(242, 142, 79, 1),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(242, 142, 79, 1),
          Color.fromRGBO(243, 56, 91, 1)
        ])),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Image.asset(
                      '$url',
                      width: 100,
                    ),
                  ),
                  new Text(
                    'Hi,$name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(right: 5),
                    child: new Text(
                      '已累计',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  new Container(
                    child: new Text(
                      '$count',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: new Text(
                      '张优惠券',
                      style: TextStyle(
                        fontSize: 15,
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
  );
}

Container getInput(BuildContext context,TextEditingController controller,var text,var hintText,TextInputType type,Color hintTextColor){
  return new Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: <Widget>[
        Container(
          width: 85,
          margin: EdgeInsets.only(left: 20),
          padding: EdgeInsets.only(top: 5),
          child: Text(
            '$text',
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
            controller: controller,
            style: TextStyle(
              color: Colors.white,
            ),
            keyboardType: type,
            decoration: InputDecoration(
              hintText: '$hintText',
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: "PingFang",
                  color: hintTextColor
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
