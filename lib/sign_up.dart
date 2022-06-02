import 'package:ar_cart_shop/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signUpState();
}

class _signUpState extends State<signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirm_passController = TextEditingController();

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
                    image: new AssetImage('assets/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Get.to(() => signIn());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70, right: 320),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 136,
                        child: TextField(
                          controller: fnameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            labelText: 'First name',
                            contentPadding: EdgeInsets.only(left: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 136,
                        child: TextField(
                          controller: lnameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            labelText: 'Last name',
                            contentPadding: EdgeInsets.only(left: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 280,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: 'Email',
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        controller: dateController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          prefixIcon: Icon(Icons.calendar_month),
                          labelText: 'mm/dd/yy',
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 300,
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
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: confirm_passController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: 'Confirm Password',
                          contentPadding: EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => signIn());
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
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
