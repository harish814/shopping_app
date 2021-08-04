import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:with_heart/cart_components/cart_model.dart';
import 'package:with_heart/screens/item_display-screen.dart';

class WomenItems extends StatelessWidget {
  WomenItems({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff4eee8),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xfff4eee8),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
          padding: const EdgeInsets.all(15.0),
          child: Material(
            borderRadius: BorderRadius.circular(15.0),
            elevation: 4.0,
            child: Container(
              height: 450,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xbbd9ecf2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'White T-Shirt',
                          style: TextStyle(fontFamily: 'Montserrat'),
                        ),
                      ),
                      Container(
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xfff4eee8),
                          ),
                          margin: EdgeInsets.only(top: 10),
                          padding:
                          EdgeInsets.only(left: 5, right: 5, bottom: 5),
                          child: Center(
                            child: Text(
                              '120 Rs',
                              style: TextStyle(fontFamily: 'Montserrat'),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return ItemDisplayScreen(
                                  image: 'images/w1.jpg',
                                );
                              }));
                        },
                        child: Container(
                          height: 200,
                          width: (screenWidth - 35) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('images/w1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return ItemDisplayScreen(
                                      image: 'images/t2.jpg',
                                    );
                                  }));
                            },
                            child: Container(
                              height: 95,
                              width: (screenWidth - 95) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage('images/t2.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return ItemDisplayScreen(
                                      image: 'images/t1.jpg',
                                    );
                                  }));
                            },
                            child: Container(
                              height: 95,
                              width: (screenWidth - 95) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage('images/t1.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Text(
                        'images/t1.jpg',
                        softWrap: true,
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 13),
                        maxLines: 6,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 45,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Color(0xff222831),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xfff4eee8),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: IconButton(
                            color: Color(0xff709fb0),
                            icon: Icon(Icons.add_shopping_cart),
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              print('pressed');
                              Provider.of<CartModel>(context, listen: false).addCartItems(timage: 'images/w1.jpg', tcost: '120', titemName: ' girlthisrt');
                            },
                            iconSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xbbd9ecf2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'White T-Shirt',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                        Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xfff4eee8),
                            ),
                            margin: EdgeInsets.only(top: 10),
                            padding:
                            EdgeInsets.only(left: 5, right: 5, bottom: 5),
                            child: Center(
                              child: Text(
                                '120 Rs',
                                style: TextStyle(fontFamily: 'Montserrat'),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ItemDisplayScreen(
                                    image: 'images/t1.jpg',
                                  );
                                }));
                          },
                          child: Container(
                            height: 200,
                            width: (screenWidth - 35) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('images/t1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return ItemDisplayScreen(
                                        image: 'images/t2.jpg',
                                      );
                                    }));
                              },
                              child: Container(
                                height: 95,
                                width: (screenWidth - 95) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage('images/t2.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return ItemDisplayScreen(
                                        image: 'images/t1.jpg',
                                      );
                                    }));
                              },
                              child: Container(
                                height: 95,
                                width: (screenWidth - 95) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage('images/t1.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'images/t1.jpg',
                          softWrap: true,
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 13),
                          maxLines: 6,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xff222831),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextButton(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xfff4eee8),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: IconButton(
                              color: Color(0xff709fb0),
                              icon: Icon(Icons.add_shopping_cart),
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                print('pressed');
                                Provider.of<CartModel>(context, listen: false).addCartItems(timage: 'images/w1.jpg', tcost: '120', titemName: ' girlthisrt');
                              },
                              iconSize: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xbbd9ecf2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'White T-Shirt',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                        Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xfff4eee8),
                            ),
                            margin: EdgeInsets.only(top: 10),
                            padding:
                            EdgeInsets.only(left: 5, right: 5, bottom: 5),
                            child: Center(
                              child: Text(
                                '120 Rs',
                                style: TextStyle(fontFamily: 'Montserrat'),
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ItemDisplayScreen(
                                    image: 'images/t1.jpg',
                                  );
                                }));
                          },
                          child: Container(
                            height: 200,
                            width: (screenWidth - 35) / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('images/t1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return ItemDisplayScreen(
                                        image: 'images/t2.jpg',
                                      );
                                    }));
                              },
                              child: Container(
                                height: 95,
                                width: (screenWidth - 95) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage('images/t2.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return ItemDisplayScreen(
                                        image: 'images/t1.jpg',
                                      );
                                    }));
                              },
                              child: Container(
                                height: 95,
                                width: (screenWidth - 95) / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage('images/t1.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'images/t1.jpg',
                          softWrap: true,
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 13),
                          maxLines: 6,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xff222831),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextButton(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xfff4eee8),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: IconButton(
                              color: Color(0xff709fb0),
                              icon: Icon(Icons.add_shopping_cart),
                              padding: EdgeInsets.all(0),
                              onPressed: () {
                                print('pressed');
                                Provider.of<CartModel>(context, listen: false).addCartItems(timage: 'images/w1.jpg', tcost: '120', titemName: ' girlthisrt');
                              },
                              iconSize: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

