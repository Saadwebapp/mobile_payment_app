import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20,
            top: 20,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff1F222A)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child:
                                  Image.asset("assets/images/close-circle.png"))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recharge Completed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your last recharge on 9847229989 of 199 rs has been\nsuccessfully completed.",
                                style: TextStyle(
                                  color: Color(0xff9A9B9B),
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff343645)),
                                child: Stack(children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Color(0xffB0BEC5),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 12),
                                    child: Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4D5DFA)),
                                    ),
                                  )
                                ]),
                              ),
                            ],
                          ),
                          Text(
                            "May 20 -12:32 Pm",
                            style: TextStyle(
                              color: Color(0xff9A9B9B),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Money Recceived",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your account ****21445 has been received an account\nof Rs 1000 using upi transaction.",
                                style: TextStyle(
                                  color: Color(0xff9A9B9B),
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff343645)),
                                child: Stack(children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Color(0xffB0BEC5),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 12),
                                    child: Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4D5DFA)),
                                    ),
                                  )
                                ]),
                              ),
                            ],
                          ),
                          Text(
                            "May 20 -12:35 Pm",
                            style: TextStyle(
                              color: Color(0xff9A9B9B),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Offer Unlocked",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "You have an unlocked offer available go ti offer section\nor tap to view the offer.",
                                style: TextStyle(
                                  color: Color(0xff9A9B9B),
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff343645)),
                                child: Stack(children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      color: Color(0xffB0BEC5),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 12),
                                    child: Container(
                                      height: 7,
                                      width: 7,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4D5DFA)),
                                    ),
                                  )
                                ]),
                              ),
                            ],
                          ),
                          Text(
                            "May 20 -12:35 Pm",
                            style: TextStyle(
                              color: Color(0xff9A9B9B),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Image.asset("assets/images/arrow-circle-down.png")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
