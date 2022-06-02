import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Colors.dart' as color;
import 'home_page.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color.AppColor.homePageBackground,
        body: Container(
          child: Column(
            children: [
              Container(
                  child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => HomePage());
                          },
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          'Cart',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                            height: 30,
                            width: 100,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 76, 78, 176)),
                              child: const Text(
                                'Explore',
                                style: TextStyle(fontSize: 12),
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120, left: 320),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color.AppColor.homePageBackground,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 5),
                              blurRadius: 10,
                              color:
                                  color.AppColor.AR_APPBlack.withOpacity(0.2))
                        ],
                      ),
                      child: Icon(Icons.delete_outline),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                width: 350,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: color.AppColor.homePageBackground,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(5, 10),
                                        blurRadius: 10,
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.2))
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 250),
                                height: 105,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/shoe2.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 120, top: 5),
                                child: Text(
                                  'Nike Shoes',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 120, top: 35),
                                child: Text(
                                  'Black & white Sneekers,\nComfortable and fashionable.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Text('Qty:  - 1 +',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Text('50\$',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320, left: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                width: 350,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: color.AppColor.homePageBackground,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(5, 10),
                                        blurRadius: 10,
                                        color: color.AppColor.gradientSecond
                                            .withOpacity(0.2))
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 250),
                                height: 105,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/table.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 120, top: 5),
                                child: Text(
                                  'Side Table',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 120, top: 35),
                                child: Text(
                                  'Brand: IKEA, Made in thermoset with \npre-laminated MDF in chestnut \nand light colour ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Text('Qty:  - 1 +',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 110),
                                      child: Text('500\$',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container(
                    child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      decoration: BoxDecoration(
                          color: color.AppColor.homePageBackground,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(5, -10),
                                blurRadius: 10,
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.2))
                          ]),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 2,
                          width: 100,
                          color: color.AppColor.AR_APPBlack.withOpacity(0.2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 20),
                      child: Text(
                        'Selected items',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 20),
                          child: Text('Nike Shoes',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, left: 20),
                          child: Text('50\$',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 110, left: 20),
                          child: Text('Side Table',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110, left: 20),
                          child: Text('500\$',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 140, left: 20),
                          child: Text('Delivery Charges',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          width: 190,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 140, right: 10),
                          child: Text('2\$',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 180),
                        child: Container(
                          height: 2,
                          width: 300,
                          color: color.AppColor.AR_APPBlack.withOpacity(0.2),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 190, left: 20),
                          child: Text('Total Charges',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200, right: 10),
                          child: Text('552\$',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 230),
                        child: Container(
                            height: 40,
                            width: 140,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 76, 78, 176)),
                              child: const Text(
                                'Check Out',
                                style: TextStyle(fontSize: 16),
                              ),
                              onPressed: () {},
                            )),
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ));
  }
}
