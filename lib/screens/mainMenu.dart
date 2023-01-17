import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/screens/balance.dart';
import 'package:mobile_payment_app/screens/notifications.dart';
import 'package:mobile_payment_app/screens/offers.dart';
import 'package:mobile_payment_app/screens/profilePage.dart';
import 'package:mobile_payment_app/screens/receiveMoney.dart';
import 'package:mobile_payment_app/screens/rewards.dart';
import 'package:mobile_payment_app/utils/colors.dart';
import 'package:mobile_payment_app/widgets/reusableContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Styles.bgColor1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1F222A),
          leading: Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Image.asset("assets/images/img4.png")),
          ),
          title: Container(
            height: 40,
            child: Center(
              child: Container(
                width: 230,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20,
                      ),
                      alignLabelWithHint: true,
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: Color(0xffB0BEC5),
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      fillColor: Color(0xff343645),
                      hintText: "Search Users, ID's etc ",
                      hintStyle:
                          TextStyle(fontSize: 12, color: Color(0xffB0BEC5))),
                ),
              ),
            ),
          ),
          actions: [
            
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff343645)),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Color(0xffB0BEC5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff4D5DFA)),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Balance",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Offers",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Rewards",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Money Transfer ",
                              style:
                                  Styles.headLineStyle1.copyWith(fontSize: 18),
                            ),
                            Container(
                              // height: 20,
                              // width: 18,
                              padding: EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff343645),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "More",
                                    style: TextStyle(
                                        color: Color(0xff696D78), fontSize: 11),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Color(0xff696D78),
                                    size: 17,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ReusableContainer(
                                txt: " Scan Qr Code",
                                img: 'scan',
                                // height: 40,
                                widthc: .449,
                                color: Color(0xff5B2E62),
                                firstColor: Color(0xff0054D2).withOpacity(.15),
                              ),
                              ReusableContainer(
                                txt: " Send to Contact",
                                img: 'person',
                                // height: 40,
                                widthc: .449,
                                color: Color(0xff2E624C),
                                firstColor: Color(0xff00D2D2).withOpacity(.15),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ReusableContainer(
                              txt: " Send To Bank",
                              img: 'house',
                              // height: 40,
                              widthc: .449,
                              color: Color(0xff5E622E),
                              firstColor: Color(0xff70FF00).withOpacity(.15),
                            ),
                            ReusableContainer(
                              txt: " SelfTransfer",
                              img: 'selfTransfer',
                              // height: 40,
                              widthc: .449,
                              color: Color(0xff622E3A),
                              firstColor: Color(0xffD200BD).withOpacity(.15),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 18.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rechange & Bill Payment",
                                style: Styles.headLineStyle1
                                    .copyWith(fontSize: 18),
                              ),
                              Container(
                                // height: 20,
                                // width: 18,
                                padding: EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff343645),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          color: Color(0xff696D78),
                                          fontSize: 11),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Color(0xff696D78),
                                      size: 17,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ReusableContainer(
                                txt: " MobileRecharge",
                                img: 'phone',
                                // height: 40,
                                widthc: .449,
                                color: Color(0xff32652A),
                                firstColor: Color(0xff3BC4FF).withOpacity(.15),
                              ),
                              ReusableContainer(
                                txt: " Electricity Bill",
                                img: 'bill',
                                // height: 40,
                                widthc: .449,
                                color: Color(0xff652A5F),
                                firstColor: Color(0xffFF823B).withOpacity(.15),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ReusableContainer(
                              txt: " DTH Recharge",
                              img: 'DTH',
                              // height: 40,
                              widthc: .449,
                              color: Color(0xff652A2A),
                              firstColor: Color(0xff4BFF3B).withOpacity(.15),
                            ),
                            ReusableContainer(
                              txt: " Postpaid Bill",
                              img: 'postpaid',
                              // height: 40,
                              widthc: .449,
                              color: Color(0xff2A4065),
                              firstColor: Color(0xffFF3B8D).withOpacity(.15),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                          child: Text(
                            "Ticket Booking",
                            style: Styles.headLineStyle1.copyWith(fontSize: 18),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  ReusableContainer(
                                    height: 62,
                                    color: Color(0xff242042),
                                    widthc: .16,
                                    img: "movies",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Movies",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 5),
                                child: Column(
                                  children: [
                                    ReusableContainer(
                                      height: 62,
                                      color: Color(0xff242042),
                                      widthc: .16,
                                      img: "trains",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        "Trains",
                                        style:
                                            TextStyle(color: Color(0xffAAAAAA)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 5),
                                child: Column(
                                  children: [
                                    ReusableContainer(
                                      height: 62,
                                      color: Color(0xff242042),
                                      widthc: .16,
                                      img: "bus",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        "Bus",
                                        style:
                                            TextStyle(color: Color(0xffAAAAAA)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 5),
                                child: Column(
                                  children: [
                                    ReusableContainer(
                                      height: 62,
                                      color: Color(0xff242042),
                                      widthc: .16,
                                      img: "plane",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        "Flights",
                                        style:
                                            TextStyle(color: Color(0xffAAAAAA)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 5),
                                child: Column(
                                  children: [
                                    ReusableContainer(
                                      height: 62,
                                      color: Color(0xff242042),
                                      widthc: .16,
                                      img: "car",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        "Car",
                                        style:
                                            TextStyle(color: Color(0xffAAAAAA)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                          child: Text(
                            "More Services",
                            style: Styles.headLineStyle1.copyWith(fontSize: 18),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                ReusableContainer(
                                  height: 62,
                                  color: Color(0xff242042),
                                  widthc: .16,
                                  img: "invest",
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    "Invest",
                                    style: TextStyle(color: Color(0xffAAAAAA)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: Column(
                                children: [
                                  ReusableContainer(
                                    height: 62,
                                    color: Color(0xff242042),
                                    widthc: .16,
                                    img: "loans",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Loans",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: Column(
                                children: [
                                  ReusableContainer(
                                    height: 62,
                                    color: Color(0xff242042),
                                    widthc: .16,
                                    img: "heart",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Insurance",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5),
                              child: Column(
                                children: [
                                  ReusableContainer(
                                    height: 62,
                                    color: Color(0xff242042),
                                    widthc: .16,
                                    img: "fastag",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Fastag",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Text(
                            "Recent Transactions",
                            style: Styles.headLineStyle1.copyWith(fontSize: 18),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  ReusableContainer(
                                    height: 69,
                                    widthc: .18,
                                    img: "p1",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Ananya",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ReusableContainer(
                                    height: 69,
                                    widthc: .18,
                                    img: "p2",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Laya Noir",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ReusableContainer(
                                    height: 69,
                                    widthc: .18,
                                    img: "p3",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Flynn",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ReusableContainer(
                                    height: 69,
                                    widthc: .18,
                                    img: "p4",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Jio Rechar..",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ReusableContainer(
                                    height: 69,
                                    widthc: .18,
                                    img: "p5",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "Electricity",
                                      style:
                                          TextStyle(color: Color(0xffAAAAAA)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0, bottom: 60),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReceiveMoney()));
                      },
                      child: Container(

                          // height: 200,
                          // width: 300,
                          decoration: BoxDecoration(
                              color: Color(0xff08348A),
                              borderRadius: BorderRadius.circular(10)),
                          height: MediaQuery.of(context).size.height * .055,
                          width: MediaQuery.of(context).size.width * .32,
                          child: Center(
                              child: Text(
                            "Recieve Money",
                            style: TextStyle(color: Color(0xffDADADA)),
                          ))),
                    ),
                  ),
                )
              ],
            ),
            Balance(),
            OffersPage(),
            Rewards(),
          ],
        ),
      ),
    );
  }
}
