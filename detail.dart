import 'data.dart';
import 'rating.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Resep resep;

  Detail(this.resep);

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('RESEP BUNDA'),
    );

    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: resep.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.black,
              child: Image(
                image: AssetImage(resep.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(resep.title,
            size: 16,
            isBold: true,
            color: Colors.white,
            padding: EdgeInsets.only(top: 16.0)),
        text(
          'oleh ${resep.writer}',
          color: Colors.white,
          size: 12,
          padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
        ),
        Row(
          children: <Widget>[
            text(
              resep.genre,
              isBold: true,
              color: Colors.red,
              padding: EdgeInsets.only(right: 8.0),
            ),
          ],
        ),
        SizedBox(height: 32.0),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.black,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {},
            minWidth: 160.0,
            color: Colors.blue,
            child: text('RESEP', color: Colors.white, size: 13),
          ),
        )
      ],
    );

    final topContent = Container(
      color: Colors.black,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          resep.description,
          style: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
          {Color color = Colors.white,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
