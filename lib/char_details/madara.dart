import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/charachters.dart';
import 'package:saruto/main.dart';

class MadaraDetails extends StatelessWidget {
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
              child: ListView(
                children: <Widget>[
                  Text(
                    'Madara Uchiha',
                    textAlign: TextAlign.center,
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
                      "Was the legendary leader of the Uchiha clan. He founded Konohagakure alongside his childhood friend and rival, Hashirama Senju, with the intention of beginning an era of peace. When the two couldn't agree on how to achieve that peace, they fought for control of the village, a conflict which ended in Madara's death. Madara, however, rewrote his death and went into hiding to work on his own plans. Unable to complete it in his natural life, he entrusted his knowledge and plans to Obito Uchiha shortly before his actual death. Years later, Madara would be revived, only to see his plans foiled and ultimately, and finally, realizing the error of his ways and making amends with Hashirama before his final death.",
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
              backgroundImage: AssetImage('images/madara.jpg'),
              radius: 100,
            ),
          ),
        ],
      ),
    );
  }
}
