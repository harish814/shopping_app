import 'package:flutter/material.dart';

class ItemDisplayScreen extends StatelessWidget {
  ItemDisplayScreen({this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          child: Center(child: Image(image: AssetImage(image),)),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
