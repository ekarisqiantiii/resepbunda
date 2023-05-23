import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';

class cover extends StatelessWidget {
  const cover({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            'assets/logo.png',
            height: 150.0,
            width: 200.0,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text('RESEP BUNDA',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        Text(
          'Resep Masakan Nusantara',
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
        SizedBox(
          height: 8.0,
        ),
        ElevatedButton(
            style: TextButton.styleFrom(backgroundColor: Color(0xFFFFFFFF)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
            },
            child: Text(
              'Lihat Resep',
              style: TextStyle(color: Colors.black),
            )),
      ]),
    );
  }
}
