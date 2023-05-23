import 'package:katalog/geser.dart';

import 'data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      title: Text('RESEP BUNDA'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    ///create book tile hero
    createTile(Resep resep) => Hero(
          tag: resep.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.purple.shade900,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${resep.title}');
              },
              child: Image(
                image: AssetImage(resep.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: reseps.map((resep) => createTile(resep)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      drawer: Geser(),
      backgroundColor: Colors.white,
      appBar: appBar,
      body: grid,
    );
  }
}
