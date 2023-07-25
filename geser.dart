import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'contact.dart';

class Geser extends StatefulWidget {
  const Geser({Key key}) : super(key: key);
  _GeserState createState() => _GeserState();
}

class _GeserState extends State<Geser> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'RESEP BUNDA',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'resepbunda@gmail.com',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profil.png'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/latarbelakang.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail_sharp),
            title: const Text('Kontak Kami'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Contact(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
