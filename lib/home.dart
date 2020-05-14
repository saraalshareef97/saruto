import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saruto/charachters.dart';
import 'package:saruto/chatting.dart';
import 'package:saruto/familes/families.dart';
import 'package:saruto/main.dart';
import 'package:saruto/photo_gallery.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.orange,
            ),
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeHorizontal * 6,
                    top: SizeConfig.blockSizeVertical * 4.5),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.list),
                  iconSize: SizeConfig.blockSizeVertical * 4,
                  color: Colors.white,
                )),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 18),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  _card1(context),
                  _card2(context),
                  _card3(context),
                  _card4(context)
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
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 14),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 4,
              ),
              width: 300,
              height: 125,
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
                    'Clans',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Check out the Chars!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                        color: Colors.grey),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 1.8,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/clans.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.5,
                    right: SizeConfig.blockSizeHorizontal * 7.6),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.2,
                    right: SizeConfig.blockSizeHorizontal * 6.9),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Families()));
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
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 14),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 4,
              ),
              width: 300,
              height: 125,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pictures',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '+50 pictures',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 4,
                        color: Colors.grey),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 1.8,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pictures.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.5,
                    right: SizeConfig.blockSizeHorizontal * 7.6),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.2,
                    right: SizeConfig.blockSizeHorizontal * 6.9),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Gallery()));
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
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 14),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 4,
              ),
              width: 300,
              height: 125,
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
              child: Container(
                margin:
                    EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bored? Let's Chat!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 5.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Talk with Naruto's Chat bot",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 4,
                          color: Colors.grey),
                    ),
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 1.8,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/video.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.5,
                    right: SizeConfig.blockSizeHorizontal * 7.6),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.2,
                    right: SizeConfig.blockSizeHorizontal * 6.9),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Chatt()));
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
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
              margin:
                  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 14),
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 4,
              ),
              width: 300,
              height: 125,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 8,
                        right: SizeConfig.blockSizeHorizontal * 4),
                    child: Text(
                      "Naruto's Begainings & Endings Audio",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.blockSizeVertical * 1.8,
                left: SizeConfig.blockSizeHorizontal * 5),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/audio.jpg'),
              radius: 45,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.5,
                    right: SizeConfig.blockSizeHorizontal * 7.6),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 22,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 4.2,
                    right: SizeConfig.blockSizeHorizontal * 6.9),
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

//   Widget _card4(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 25),
//       width: MediaQuery.of(context).size.width,
//       child: Stack(
//         children: <Widget>[
//           Container(
//               margin: EdgeInsets.only(left: 60),
//               alignment: Alignment.topCenter,
//               padding: EdgeInsets.only(
//                 top: 35,
//               ),
//               width: 300,
//               height: 125,
//               decoration: BoxDecoration(
//                   color: Colors.grey[50],
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 6.0,
//                       spreadRadius: 0.3,
//                       color: Colors.grey[400],
//                       offset: Offset(
//                         1.0,
//                         1.0,
//                       ),
//                     ),
//                   ],
//                   border: Border.all(
//                     color: Colors.grey[50],
//                   ),
//                   borderRadius: BorderRadius.circular(25)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.only(left: 50, right: 40),
//                     child: Text(
//                       "Naruto's Begainings & Endings Audio",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                 ],
//               )),
//           Container(
//             margin: EdgeInsets.only(top: 20, left: 20),
//             child: CircleAvatar(
//               backgroundImage: AssetImage('images/audio.jpg'),
//               radius: 45,
//             ),
//           ),
//           Stack(
//             children: <Widget>[
//               Container(
//                 alignment: Alignment.centerRight,
//                 margin: EdgeInsets.only(top: 38, right: 30),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.grey[200],
//                   radius: 22,
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.centerRight,
//                 margin: EdgeInsets.only(top: 36, right: 27),
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.orange,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
}
