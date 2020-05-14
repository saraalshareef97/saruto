import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/main.dart';

class HiashiDetails extends StatelessWidget {
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
                    'Hiashi Hyuga',
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
                      "Hiashi was born only seconds before his twin brother Hizashi, making Hiashi the head of the Hyūga clan and Hizashi a member of the branch house, whose only purpose in life would be to protect members of the main house. Years later, when Neji was born, Hizashi became bitter that his son would never be able to reach his full potential like a member of the main house, causing him to be openly resentful of Hiashi and his daughter. Hiashi was also responsible for branding the family's curse seal on Neji's forehead, further straining the relationship between the two brothers. One day during Hinata's training, overwhelmed with resentment and anger, Hizashi gave Hinata a murderous glare, Hiashi sensed the killing intent and activated the curse seal on his younger brother, causing him intense pain. He told Hizashi to leave as he would no longer tolerate incidents like this, telling him to never forget his duties.",
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
              backgroundImage: AssetImage('images/Hiashi.png'),
              radius: 100,
            ),
          ),
        ],
      ),
    );
  }
}
