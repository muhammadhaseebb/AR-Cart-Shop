import 'dart:ui';

import 'package:ar_cart_shop/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          child: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/signin.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            // ma: const EdgeInsets.all(10),

            children: <Widget>[
              Container(
                width: 250,
                padding: const EdgeInsets.only(top: 320),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'User Name',
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
              ),
              Container(
                width: 270,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Password',
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 121, 255),
                      decoration: TextDecoration.underline),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => HomePage());
                },
                child: Container(
                  height: 40,
                  width: 120,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 76, 78, 176),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  const Text('Does not have an account?'),
                  InkWell(
                    onTap: () {
                      Get.to(() => signup());
                    },
                    child: Text(
                      ' Sign up',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 32, 121, 255),
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
