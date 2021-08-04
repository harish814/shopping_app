import 'package:flutter/material.dart';
import 'package:with_heart/components/constants.dart';

import 'home_screen.dart';

class AboutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Future<bool> _onPressedBack(){
      return Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }), (Route<dynamic> route) => false);
    }
    return WillPopScope(
      onWillPop: _onPressedBack,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Text('With Heart'),
            backgroundColor: Color(0xffb8b5ff),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
                padding: EdgeInsets.only(right: 20),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }), (Route<dynamic> route) => false);
                },
                color: Colors.black,
              ),
            ]),
        body: Container(
          color: Color(0xffb8b5ff),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 5, left: 30, right: 15, bottom: 10),
                child: Row(
                  children: [
                    Center(
                      child: CircleAvatar(
                        child: Image(
                          image: AssetImage('images/p.png'),
                        ),
                        radius: 40,
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      width: 50,
                      child: VerticalDivider(
                        color: Color(0xfff8a1d1),
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'A.R.Sree Harish',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '+919739658005',
                            style: TextStyle(fontFamily: 'Roboto'),
                          ),
                          Text('hsree814@gmail.com',
                              style: TextStyle(fontFamily: 'Roboto')),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Text('Edit'),
                                  Icon(Icons.edit),
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: ListView(
                    children: <Widget>[
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                child: Text(
                                  'My Orders',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'VIEW ALL ORDERS',
                                    style: TextStyle(color: Colors.lightBlueAccent),
                                    textAlign: TextAlign.end
                                    ,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                child: Text(
                                  'My Bank Cards',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'VIEW DETAILS',
                                    style: TextStyle(color: Colors.lightBlueAccent),
                                    textAlign: TextAlign.end
                                    ,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                child: Text(
                                  'My Addresses',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'VIEW ALL ADDRESS',
                                    style: TextStyle(color: Colors.lightBlueAccent),
                                    textAlign: TextAlign.end
                                    ,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextButton(onPressed: (){}, child: Row(
                        children: <Widget>[
                          Icon(Icons.settings,size: 18,),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Account Settings',
                            style: TextStyle(
                            fontSize: 14,
                          ),),
                        ],
                      )),
                      TextButton(onPressed: (){}, child: Row(
                        children: <Widget>[
                          Icon(Icons.logout,size: 18,),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Logout of this app',
                          style: TextStyle(
                            fontSize: 14,
                          ),),
                        ],
                      ),),
                      TextButton(onPressed: (){}, child: Row(
                        children: <Widget>[
                          Icon(Icons.logout,size: 18,),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Logout of all devices',
                            style: TextStyle(
                            fontSize: 14,
                          ),),
                        ],
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
