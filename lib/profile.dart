import 'package:ar_cart_shop/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
                image: new AssetImage('assets/profileBackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Get.to(() => HomePage());
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 180, top: 70),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(left: 80, top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/profileimg.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Text(
                  'Muhammad Haseeb',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.settings)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.help)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'FAQS',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.contact_phone)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Help',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.privacy_tip)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
