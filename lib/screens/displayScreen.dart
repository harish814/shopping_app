import 'package:flutter/material.dart';
import 'package:with_heart/items/boys_items.dart';
import 'package:with_heart/items/women_items.dart';
import '../components/constants.dart';
import '../items/men_items.dart';

import 'package:with_heart/items/girs_items.dart';

class DisplayScreen extends StatefulWidget {
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackground_color,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: kBackground_color,
        elevation: 5,
        centerTitle: true,
        title: Text(
          'Flipcart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      drawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    arrowColor: Color(0xffb8b5ff),
                    decoration: BoxDecoration(
                      color: Color(0xffb8b5ff)
                    ),
                    accountName: Text('Harish'),
                    accountEmail: Text('hsree814@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      child: Image.asset('images/p.png'),
                    ),
                  ),
                  ListTile(
                    title: Text('Logout'),
                    onTap: ()  {
                      // SharedPreferences prefs = await SharedPreferences.getInstance();
                      // prefs.remove('loginUser');
                      // _signout(context);
                    },
                  ),
                  ListTile(
                    title: Text('View Cart'),
                    onTap: (){}
                  ),
                  ListTile(
                    title: Text('Account Settings'),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text('Profile'),
                    onTap: (){},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: kBackground_color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'All',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Material(
                color: Color(0xffd9ecf2),
                borderRadius: BorderRadius.circular(15.0),
                elevation: 4.0,
                child: Container(
                  height: screenHeight-270,
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          buildColumn(
                              image: 'images/men.jpg',
                              name: 'Men',
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MenItems(title: 'Men\'s Clothing');
                                }));
                              }),
                          buildColumn(
                              image: 'images/women.jpg',
                              name: 'Women',
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return WomenItems(title: 'Women\'s Clothing');
                                }));
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          buildColumn(
                              image: 'images/boy.jpg',
                              name: 'Boy',
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BoysItems(title: 'Boys\'s Clothing');
                                }));
                              }),
                          buildColumn(
                              image: 'images/girl.jpg',
                              name: 'Girl',
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return GirlsItems(title: 'Girls\'s Clothing');
                                }));
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> _signout(BuildContext context) async {
  //   await _auth.signOut().then((value) {
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (context) {
  //       return WelcomeScreen();
  //     }), (Route<dynamic> route) => false);
  //   });
  // }

  Column buildColumn({String image, String name, Function onPressed}) {
    return Column(
      children: [
        TextButton(
          onPressed: onPressed,
          child: Container(
            height: 110,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        )
      ],
    );
  }
}
