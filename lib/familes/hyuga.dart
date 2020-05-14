import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/char_details/Hanabi.dart';
import 'package:saruto/char_details/Hiashi.dart';
import 'package:saruto/char_details/Hinata.dart';
import 'package:saruto/char_details/Neji.dart';
import 'package:saruto/char_details/itachi.dart';
import 'package:saruto/char_details/madara.dart';
import 'package:saruto/char_details/obito.dart';
import 'package:saruto/char_details/sasuki.dart';
import 'package:saruto/char_details/shisui.dart';
import 'package:saruto/main.dart';

class HyugaChars extends StatelessWidget {
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
              height: SizeConfig.blockSizeVertical * 45,
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
                    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical),
                    alignment: Alignment.topCenter,
                    // margin:
                    // EdgeInsets.only(left: SizeConfig.blockSizeHorizontal),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/Hyuga_Clan.jpg'),
                      radius: 45,
                    ),
                  ),
                  Text(
                    'Hyuga Clan',
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
                      "Is one of the four noble clans of Konohagakure, as well as the strongest clan in the village. All members born into this clan possess the Byakugan, a kekkei genkai that gives them extended fields of vision and the ability to see through solid objects and even the chakra circulatory system, amongst other things.",
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
                    'Hiashi Hyuga',
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
              backgroundImage: AssetImage('images/Hiashi.png'),
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
                            builder: (context) => HiashiDetails()));
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
                    'Hinata Hyuga',
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
              backgroundImage: AssetImage('images/Hinata_Part_II.png'),
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
                            builder: (context) => HinataiDetails()));
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
                    'Hanabi Hyuga',
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
              backgroundImage: AssetImage('images/Hanab.png'),
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
                            builder: (context) => HanabiDetails()));
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
                    'Neji Huyoga',
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
              backgroundImage: AssetImage('images/Neji.png'),
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
                            builder: (context) => NejiDetails()));
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
