import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Harsh Saxena"),
              accountEmail: Text("harsh.18bit1059@abes.ac.in"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images.pp.jpg"),
              ),
            ),
            ListTile(
              title: Text(
                "View Profile",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Watch on TV",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.live_tv,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Rate Us On Playstore",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.rate_review,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Share WIth Friends",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.share,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "About Us",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.label),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.exit_to_app,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsPage())
                );
              }
          ),
        ],
      ),
      body: Container(
        child: Center(
            child: Image.network("https://picsum.photos/300"),
      ),
    ),);
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Settings"),
      ),
      body: Center(
        child: Text('ThIs Is A Settings Page !!!'),
      ),
    );
  }
}

