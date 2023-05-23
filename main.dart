import 'package:flutter/material.dart';
import 'package:katalog/cover.dart';
import 'contact.dart';
import 'data.dart';
import 'detail.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RESEP BUNDA',
      debugShowCheckedModeBanner: false,
      home: cover(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Resep resep = reseps.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(resep),
    );
  }
}
