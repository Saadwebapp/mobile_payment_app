import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:mobile_payment_app/screens/mainMenu.dart';
import 'package:mobile_payment_app/utils/colors.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor1,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 540,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bgImg.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260.0, left: 110),
                child: Image.asset("assets/images/img2.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 185.0, left: 32),
                child: Image.asset("assets/images/img1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0, left: 45),
                child: Image.asset("assets/images/img3.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 100.0),
                child: Text(
                  "LOGIN WITH YOUR \nMOBILE PHONE \nNUMBER",
                  style: Styles.headLineStyle1,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                fillColor: Color(0xffEDEFFF),
                prefixText: "+92  ",
                prefixStyle: TextStyle(color: Color(0xff4D5DFA)),
                hintText: "  Enter Mobile Number",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff4D5DFA),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    "Verify",
                    style: Styles.headLineStyle1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 8),
            child: Text(
              "Your personal details are safe with us",
              style: Styles.headLineStyle2
                  .copyWith(color: Color(0xff7C82BA), fontSize: 12),
            ),
          ),
          Text("Read our Privacy Policy and Terms and Conditions",
              style: Styles.headLineStyle2
                  .copyWith(color: Color(0xff7C82BA), fontSize: 9)),
        ]),
      ),
    );
  }
}
