import 'package:flutter/material.dart';

const kBackground_color = Color(0xfff4eee8);

const kInputDecoration = InputDecoration(
  fillColor: Color(0xbbd9ecf2),
  focusColor: Color(0xbbd9ecf2),
  hoverColor: Color(0xbbd9ecf2),
  hintText: 'Enter your password',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
