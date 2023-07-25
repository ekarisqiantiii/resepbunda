import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:katalog/home.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      title: Text('Kontak Kami'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
        appBar: appBar,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/wa.png'),
              ),
              Text('087828429101',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/igg.png'),
              ),
              Text('@resepbunda',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue)),
            ],
          ),
        ));
  }
}
