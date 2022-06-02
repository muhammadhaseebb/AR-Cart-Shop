import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Colors.dart' as color;
import 'home_page.dart';

class favourites extends StatefulWidget {
  const favourites({Key? key}) : super(key: key);

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
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
                        InkWell(
                          onTap: () {
                            Get.to(() => HomePage());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          'Favourites',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 70,
                        ),
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
                                margin: const EdgeInsets.only(left: 270),
                                height: 30,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/redheart.png"),
                                  ),
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
                                margin: const EdgeInsets.only(left: 270),
                                height: 30,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/redheart.png"),
                                  ),
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
            ],
          ),
        ));
  }
}
