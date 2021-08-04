import 'package:flutter/material.dart';
import 'package:with_heart/cart_components/cart_model.dart';
import 'package:with_heart/components/constants.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

class CartScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    Future<bool> _onPressedBack(){
      return Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
            return HomeScreen();
          }), (Route<dynamic> route) => false);
    }
    return WillPopScope(
      onWillPop: _onPressedBack,
      child: Scaffold(
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
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }), (Route<dynamic> route) => false);
              },
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Color(0x55d9ecf2),
              height: 60,
              width: double.infinity,
            ),
            Expanded(
              child: Container(
                  color: Color(0x55d9ecf2),
                child: Consumer<CartModel>(
                  builder: (context, cartItems, child){
                    return ListView.builder
                      (
                        itemCount: cartItems.cartItems.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: ListTile(
                              leading: Image.asset(cartItems.cartItems[index].image),
                              title: Text(cartItems.cartItems[index].itemName),
                              subtitle: Text(cartItems.cartItems[index].cost),
                              trailing: IconButton(
                                icon: Icon(Icons.delete_forever),
                                onPressed: (){
                                  Provider.of<CartModel>(context, listen: false).deleteCartItems(index);
                                },
                              ),
                              focusColor: Colors.grey,
                            ),
                          );
                        }
                    );
                  },
                ),
              ),
            ),
          ],
        )

      ),
    );
  }
}
