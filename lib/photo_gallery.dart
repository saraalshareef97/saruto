import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:saruto/main.dart';

class Gallery extends StatelessWidget {
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
        home: Scaffold(
            body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
      ),
      Container(
          margin: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 4,
              top: SizeConfig.blockSizeVertical * 3),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            iconSize: SizeConfig.blockSizeVertical * 3,
            color: Colors.white,
          )),
      _buildGrid(context),
    ])));
  }
}

Widget _buildGrid(BuildContext context) => GridView.extent(
    maxCrossAxisExtent: 250,
    padding: EdgeInsets.fromLTRB(
        SizeConfig.blockSizeHorizontal * 3,
        SizeConfig.blockSizeVertical * 10,
        SizeConfig.blockSizeHorizontal * 3,
        0),
    mainAxisSpacing: 0,
    crossAxisSpacing: 0,
    children: _buildGridTileList(context));

List<Container> _buildGridTileList(context) => <Container>[
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery()));
          },
        ),
        margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/audio.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery1()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/chars.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery2()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/garaa.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery3()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/Hinata_Part_II.png'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery4()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/jiraya.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery5()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/kakshi.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery6()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/Iruka.png'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery7()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/tsunadi.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery8()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/Sakora.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhotoGallery9()));
          },
        ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: new BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage('images/video.jpg'),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ];

class PhotoGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
      ],
    ));
  }
}

class PhotoGallery1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
      ],
    ));
  }
}

class PhotoGallery2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
      ],
    ));
  }
}

class PhotoGallery3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
      ],
    ));
  }
}

class PhotoGallery4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
      ],
    ));
  }
}

class PhotoGallery5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
      ],
    ));
  }
}

class PhotoGallery6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
      ],
    ));
  }
}

class PhotoGallery7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
      ],
    ));
  }
}

class PhotoGallery8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
      ],
    ));
  }
}

class PhotoGallery9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoViewGallery(
      pageOptions: <PhotoViewGalleryPageOptions>[
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage("images/video.jpg"),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/audio.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/chars.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/garaa.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Hinata_Part_II.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/jiraya.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/kakshi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Iruka.png'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/tsunadi.jpg'),
        ),
        PhotoViewGalleryPageOptions(
          imageProvider: AssetImage('images/Sakora.jpg'),
        ),
      ],
    ));
  }
}
