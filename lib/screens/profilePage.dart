import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/widgets/profileContainer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15,
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/profile.png"),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                top: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Elsa",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Image.asset("assets/images/star.png"),
                                      SizedBox(
                                        width: 118,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(
                                            context,
                                          );
                                        },
                                        child: Image.asset(
                                          "assets/images/close-circle.png",
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Level 4 Ace Member",
                                    style: TextStyle(
                                      color: Color(0xffB0BEC5),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 140,
                                      ),
                                      Text(
                                        "85%",
                                        style: TextStyle(
                                          color: Color(0xffB0BEC5),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Color(0xff4D5DFA),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            )),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            )),
                                      ),
                                      Text(
                                        " Lv 5",
                                        style: TextStyle(
                                          color: Color(0xffB0BEC5),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "1,208",
                                  style: TextStyle(
                                      color: Color(0xff4D5DFA),
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Transactions",
                                  style: TextStyle(
                                    color: Color(0xff939FA4),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: .6,
                              height: 45,
                              color: Color(0xff939FA4),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "726",
                                  style: TextStyle(
                                      color: Color(0xff4D5DFA),
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Points",
                                  style: TextStyle(
                                    color: Color(0xff939FA4),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: .6,
                              height: 45,
                              color: Color(0xff939FA4),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                Text(
                                  "8",
                                  style: TextStyle(
                                      color: Color(0xff4D5DFA),
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Rank",
                                  style: TextStyle(
                                    color: Color(0xff939FA4),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ProfileContainer(
                              txt: "Explore",
                              img: "arrow-circle-left",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, top: 10.0),
                          child: Row(
                            children: [
                              ProfileContainer(
                                txt: "EditProfile",
                                img: "user-edit",
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ProfileContainer(
                                txt: "Settings",
                                img: "Union",
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ProfileContainer(
                                txt: "Share",
                                img: "share",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1F222A)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/receipt-minus.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                                Text(
                                  "All Transactions",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .247,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/cautionSign.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                                Text(
                                  "Pending Transactions",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .12,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/clock.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                                Text(
                                  "Refund status",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .29,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .015,
                                ),
                                Image.asset("assets/images/!.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .091,
                                ),
                                Text(
                                  "Raise an issue",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .29,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/hearticon.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                                Text(
                                  "Help and Support",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .21,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1F222A)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/cautionSign.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                                Text(
                                  "About Us",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .39,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                Image.asset("assets/images/clock.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .05,
                                ),
                                Text(
                                  "Terms and Conditions",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .12,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .03,
                                ),
                                Image.asset("assets/images/!.png"),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .07,
                                ),
                                Text(
                                  "Feedback",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .39,
                                ),
                                Image.asset("assets/images/arrow_right.png")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
