import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:saruto/home.dart';
import 'package:saruto/main.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Timer(
        Duration(seconds: 15),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('images/splashPage.gif'),
                      fit: BoxFit.cover)),
            ),
            TextAnimation(),
          ],
        ),
      ),
    );
  }
}

class TextAnimation extends StatefulWidget {
  @override
  _TextAnimationState createState() => new _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  List<Widget> _textAnimationKit = [
    SizedBox(
      child: TypewriterAnimatedTextKit(
        speed: Duration(milliseconds: 200),
        totalRepeatCount: 5,
        text: [
          "Welcome",
          "To My Application",
          "Saruto! Naruto I mean..",
          "Dattabaayoo!!",
        ],
        textStyle: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal * 8,
            color: Colors.orange[600],
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    )
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 60),
        child: _textAnimationKit[_index]);
  }
}

// class SplashScreen extends StatefulWidget {
//   @override
//   Splash createState() => Splash();
// }

// class Splash extends State<SplashScreen>  {

//   @override
//   void initState() {
//     super.initState();

//   }
//   @override
//   Widget build(BuildContext context) {
//         Timer(
//             Duration(seconds: 3),
//                 () =>
//             Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 builder: (BuildContext context) => LandingScreen())));

//     var assetsImage = new AssetImage(
//         'images/new_logo.png'); //<- Creates an object that fetches an image.
//     var image = new Image(
//         image: assetsImage,
//         height:300); //<- Creates a widget that displays an image.

//     return MaterialApp(
//       home: Scaffold(
//         /* appBar: AppBar(
//           title: Text("MyApp"),
//           backgroundColor:
//               Colors.blue, //<- background color to combine with the picture :-)
//         ),*/
//         body: Container(
//           decoration: new BoxDecoration(color: Colors.white),
//           child: new Center(
//             child: image,
//           ),
//         ), //<- place where the image appears
//       ),
//     );
//   }
// }
