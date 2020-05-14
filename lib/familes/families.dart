import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/char_details/naruto.dart';
import 'package:saruto/char_details/sasuki.dart';
import 'package:saruto/familes/hyuga.dart';
import 'package:saruto/familes/nara_chars.dart';
import 'package:saruto/familes/uchiha_chars.dart';
import 'package:saruto/familes/uzumaki_chars.dart';
import 'package:saruto/main.dart';

class Families extends StatelessWidget {
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
                  _card6(context),
                  _card7(context),
                  _card8(context),
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
                    'Uzumaki Clan',
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
              backgroundImage: AssetImage('images/uzumaki.jpg'),
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
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => UzuChars()));
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
                    'Uchiha Clan',
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
              backgroundImage: AssetImage('images/uchiha.png'),
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
                            builder: (context) => UchihaChars()));
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
                    'Hyuga Clan',
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
              backgroundImage: AssetImage('images/Hyuga_Clan.jpg'),
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
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => HyugaChars()));
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
                    'Nara Clan',
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
              backgroundImage: AssetImage('images/nara.jpg'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NaraChars()));
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
                    'Aburame Clan',
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
              backgroundImage: AssetImage('images/Aburame.png'),
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
                        MaterialPageRoute(
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

  Widget _card6(BuildContext context) {
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
                    'Inuzuka Clan',
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
              backgroundImage: AssetImage('images/Inuzuka.png'),
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
                  onPressed: () {},
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

  Widget _card7(BuildContext context) {
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
                    'Akimichi Clan',
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
              backgroundImage: AssetImage('images/Akimichi.jpg'),
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
                  onPressed: () {},
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

  Widget _card8(BuildContext context) {
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
                    'Others',
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
              backgroundImage: AssetImage('images/others.jpg'),
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
                  onPressed: () {},
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

  Widget _card9(BuildContext context) {
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
                    'Jiraiya',
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
              backgroundImage: AssetImage('images/jiraya.jpg'),
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
                  onPressed: () {},
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

  Widget _card10(BuildContext context) {
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
                    'Iruka Omeno',
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
              backgroundImage: AssetImage('images/Iruka.png'),
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
                  onPressed: () {},
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
