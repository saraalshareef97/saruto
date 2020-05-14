import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Chatt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(65.0),
              child: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
                title: Container(
                    alignment: Alignment.centerRight,
                    child: Row(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/video.jpg'),
                        backgroundColor: Colors.red[50],
                        radius: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Sesni Robota",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ])),
                actions: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            body: _sensiChat(context)));
  }
}

Widget _sensiChat(BuildContext context) {
  return WebviewScaffold(
    url:
        'https://integrations.eu-gb.assistant.watson.cloud.ibm.com/web/public/716d5d24-480c-4a7c-a3a2-e534f2b4941b',
    hidden: false,
  );
}
