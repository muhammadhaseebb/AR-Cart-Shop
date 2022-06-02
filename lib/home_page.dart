import 'dart:convert';

import 'package:ar_cart_shop/cart.dart';
import 'package:ar_cart_shop/favourites.dart';
import 'package:ar_cart_shop/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List info = [];
  List info2 = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      setState(() {
        info = json.decode(value);
      });
    });
    DefaultAssetBundle.of(context).loadString("json/info2.json").then((value) {
      setState(() {
        info2 = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.AppColor.homePageBackground,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      decoration: BoxDecoration(
                        color: color.AppColor.homePageBackground,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("assets/Waves.png"),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 10),
                              blurRadius: 10,
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.2))
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(top: 225),
                        child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: color.AppColor.homePageBackground,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70)),
                            prefixIcon: Icon(Icons.search),
                            labelText: 'Search for Products',
                            contentPadding: EdgeInsets.only(left: 10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 180, left: 260),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/filter.png"),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 180, left: 300),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/sort.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 200,
                      margin: const EdgeInsets.only(bottom: 20, left: 210),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/store.png"),
                        ),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 100,
                      margin: const EdgeInsets.only(bottom: 20, right: 200),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/profile.png"),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 100,
                      margin: const EdgeInsets.only(left: 35, top: 150),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hey Haseeb!",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(249, 33, 33, 33),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Let's get started. Explore",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(228, 33, 33, 33),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 200, top: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(249, 33, 33, 33),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: info.length,
                    itemBuilder: (_, i) {
                      print(i);
                      return Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(info[i]['img'])),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(5, 5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 3,
                                      offset: Offset(-5, -5),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1)),
                                ]),
                            child: Center(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  info[i]['title'],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: color.AppColor.homePageDetail),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
              Container(
                margin: EdgeInsets.only(right: 180, bottom: 20),
                child: Text(
                  "Popular Now",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(249, 33, 33, 33),
                  ),
                ),
              ),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 15),
                    scrollDirection: Axis.horizontal,
                    itemCount: info2.length,
                    itemBuilder: (_, j) {
                      print(j);
                      return Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  // margin: EdgeInsets.only(bottom: 50),
                                  height: 170,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1)),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: color.AppColor.gradientSecond
                                                .withOpacity(0.1)),
                                      ]),
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
                                  margin: EdgeInsets.only(top: 5),
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    // borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(info2[j]['img'])),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: EdgeInsets.only(left: 90, top: 10),
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    // borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/whiteheart.png")),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 130),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        info2[j]['title'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(249, 33, 33, 33),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        info2[j]['price'],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(228, 33, 33, 33),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 150),
                                  child: Text(
                                    info2[j]['brand'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(228, 33, 33, 33),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          )),
        ),
        bottomNavigationBar: BottomAppBar(
            color: color.AppColor.homePageBackground,
            child: Container(
              height: 60,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 28),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/home.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const cart());
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/cart.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/scan.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => favourites());
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/favourite.png"),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => profile());
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 28),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/account.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
