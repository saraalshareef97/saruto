import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/charachters.dart';
import 'package:saruto/main.dart';

class NarutoDetails extends StatelessWidget {
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
                    left: SizeConfig.blockSizeHorizontal * 4,
                    top: SizeConfig.blockSizeVertical * 6),
                child: IconButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) => Chars()));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: SizeConfig.blockSizeVertical * 3,
                  color: Colors.white,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockSizeVertical * 8, 0, 0),
              alignment: Alignment.center,
              child: ListView(
                children: <Widget>[
                  _card1(context),
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
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: AlignmentDirectional(-0.9, 0.5),
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 7,
                  right: SizeConfig.blockSizeHorizontal * 7),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 16, left: 25),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Naruto Uzumaki',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0,
                        SizeConfig.blockSizeVertical * 2,
                        SizeConfig.blockSizeHorizontal * 4,
                        0),
                    child: Text(
                      "Is a fictional character in the anime and manga Naruto, created by Masashi Kishimoto. Serving as the eponymous protagonist of the series, he is a young ninja from the fictional village of Konohagakure. The villagers ridicule Naruto on account of the Nine-Tailed Demon Fox—a malevolent creature that attacked Konohagakure—that was sealed away in Naruto's body. Despite this, he aspires to become his village's leader, the Hokage. His carefree, optimistic and boisterous personality enables him to befriend other Konohagakure ninja, as well as ninja from other villages.",
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 23.5,
                bottom: SizeConfig.blockSizeVertical * 61),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/naruto.jpg'),
              radius: 100,
            ),
          ),
        ],
      ),
    );
  }
}
