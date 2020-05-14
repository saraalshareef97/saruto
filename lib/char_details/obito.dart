import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/charachters.dart';
import 'package:saruto/main.dart';

class ObitoDetails extends StatelessWidget {
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
                    'Obito Uchiha',
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
                      " Was a member of Konohagakure's Uchiha clan. He was believed to have died during the Third Shinobi World War, his only surviving legacy being the Sharingan he gave to his teammate, Kakashi Hatake. In truth, Obito was saved from death and trained by Madara Uchiha, but the events of the war left Obito disillusioned with reality, and he inherited Madara's plan to create an ideal world. Resurfacing under the names of Tobi (トビ, Tobi) and Madara Uchiha himself, Obito subtly took control of the Akatsuki, using them as a means to advance his machinations, eventually going public and starting the Fourth Shinobi World War. However, towards the war's conclusion, Obito had a change of heart and, as atonement, sacrificed his life to save the same world he sought to replace.",
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
              backgroundImage: AssetImage('images/obito.jpg'),
              radius: 100,
            ),
          ),
        ],
      ),
    );
  }
}
