import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/charachters.dart';
import 'package:saruto/main.dart';

class ShisuiDetails extends StatelessWidget {
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
                    'Shisui Uchiha',
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
                      "Graduating from the Academy during the Third Shinobi World War, Shisui was placed on a genin team alongside his best friend. Immediately after the war ended a year later, Shisui witnessed his friend die on a mission, consequently awakening the Mangekyō Sharingan as he felt responsible.[3] A year later, he met a 5 year old Itachi Uchiha, whom he became best friends with while the two formed a brother-like bond. A year afterwards, Shisui began drawing attention as a genin, garnering the name for his usage of the Body Flicker Technique.[4] Two years later, living with his parents as a jōnin[5] and breadwinner for the family of three, Shisui's bedridden father stopped recognising him, due to his decline of health from falling ill as a result of him losing his leg in the last world war. Acknowledging that everybody dies someday, Shisui was prepared for his passing.[6]",
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
              backgroundImage: AssetImage('images/Shisui.jpg'),
              radius: 100,
            ),
          ),
        ],
      ),
    );
  }
}
