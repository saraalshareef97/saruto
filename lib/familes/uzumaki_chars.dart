import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/char_details/Karin.dart';
import 'package:saruto/char_details/Kushina.dart';
import 'package:saruto/char_details/nagato.dart';
import 'package:saruto/char_details/naruto.dart';
import 'package:saruto/char_details/sasuki.dart';
import 'package:saruto/main.dart';

class UzuChars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.orange,
            ),
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 6,
                    top: SizeConfig.blockSizeVertical * 4.5),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: SizeConfig.blockSizeVertical * 3,
                  color: Colors.white,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockSizeVertical * 10, 0, 0),
              alignment: Alignment.center,
              child: ListView(
                children: <Widget>[
                  _card1(context),
                  _card2(context),
                  _card3(context),
                  _card4(context),
                  _card5(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _card1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 4),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 10),
              alignment: Alignment.topCenter,
              width: SizeConfig.blockSizeHorizontal * 80,
              height: SizeConfig.blockSizeVertical * 40,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      spreadRadius: 0.3,
                      color: Colors.grey[400],
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey[50],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    // margin:
                    // EdgeInsets.only(left: SizeConfig.blockSizeHorizontal),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/uzumaki.jpg'),
                      radius: 45,
                    ),
                  ),
                  Text(
                    'Uzumaki Clan',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        SizeConfig.blockSizeHorizontal * 5,
                        SizeConfig.blockSizeVertical * 2,
                        SizeConfig.blockSizeHorizontal * 5,
                        0),
                    child: Text(
                      'The Uzumaki Clan is formerly a prominent clan in Uzushiogakure. Since its disbandment, most of its known members reside in Konohagakure.Despite its demise, fifteen years after the Fourth Shinobi World War the clan is once again active.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _card2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 2),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 5.5,
                  left: SizeConfig.blockSizeHorizontal * 5),
              width: SizeConfig.blockSizeHorizontal * 73,
              height: SizeConfig.blockSizeVertical * 16,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      spreadRadius: 0.3,
                      color: Colors.grey[400],
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey[50],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  Text(
                    'Naruto Uzumaki',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 2.2,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/naruto.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 5,
                    right: SizeConfig.blockSizeHorizontal * 7),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.8,
                    right: SizeConfig.blockSizeHorizontal * 6),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => NarutoDetails()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _card3(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 2),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 5.5,
                  left: SizeConfig.blockSizeHorizontal * 5),
              width: SizeConfig.blockSizeHorizontal * 73,
              height: SizeConfig.blockSizeVertical * 16,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      spreadRadius: 0.3,
                      color: Colors.grey[400],
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey[50],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  Text(
                    'Kushina Uzumaki',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 2.2,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/Kushina.png'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 5,
                    right: SizeConfig.blockSizeHorizontal * 7),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.8,
                    right: SizeConfig.blockSizeHorizontal * 6),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => KushinaDetails()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _card4(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 2),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 5.5,
                  left: SizeConfig.blockSizeHorizontal * 5),
              width: SizeConfig.blockSizeHorizontal * 73,
              height: SizeConfig.blockSizeVertical * 16,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      spreadRadius: 0.3,
                      color: Colors.grey[400],
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey[50],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  Text(
                    'Karin Uzumaki',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 2.2,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/Karin.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 5,
                    right: SizeConfig.blockSizeHorizontal * 7),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.8,
                    right: SizeConfig.blockSizeHorizontal * 6),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => KarinDetails()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _card5(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 2),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 5.5,
                  left: SizeConfig.blockSizeHorizontal * 5),
              width: SizeConfig.blockSizeHorizontal * 73,
              height: SizeConfig.blockSizeVertical * 16,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6.0,
                      spreadRadius: 0.3,
                      color: Colors.grey[400],
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey[50],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  Text(
                    'Nagato Uzumaki',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 2.2,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/nagato.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 5,
                    right: SizeConfig.blockSizeHorizontal * 7),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.8,
                    right: SizeConfig.blockSizeHorizontal * 6),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => NagatoDetails()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.orange,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
