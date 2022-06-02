import 'package:ar_cart_shop/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

class openingscreen extends StatefulWidget {
  const openingscreen({Key? key}) : super(key: key);

  @override
  State<openingscreen> createState() => _openingscreenState();
}

class _openingscreenState extends State<openingscreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return signIn();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/openingscreen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 160,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Logo.png"),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
