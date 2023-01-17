import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";
import 'package:mobile_payment_app/utils/colors.dart';
import 'package:mobile_payment_app/widgets/balanceContainer.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 265),
      child: Container(
        // height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xff1F222A)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/arrowBack.png"),
                  Text(
                    "PortFolio value",
                    style: Styles.headLineStyle1.copyWith(fontSize: 17),
                  ),
                  Image.asset("assets/images/frame.png"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "\$54,375",
                    style: TextStyle(fontSize: 40, color: Color(0xffB0BEC5)),
                  ),
                  Text(
                    "In 3 Accounts",
                    style: TextStyle(fontSize: 20, color: Color(0xffB0BEC5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BContainer(
                          txtColor: Color(0xffF4EDFF),
                          color: Color(0xff652A5F),
                          widthc: .38,
                          height: 100,
                          txt1: "Federal Bank",
                          txt2: "1142524899652",
                          txt3: "16,456.05",
                        ),
                        BContainer(
                          txtColor: Color(0xffF4EDFF),
                          color: Color(0xff442A65),
                          widthc: .38,
                          height: 100,
                          txt1: "State Bank",
                          txt2: "1142524899652",
                          txt3: "2045.05",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BContainer(
                          txtColor: Color(0xffF4EDFF),
                          color: Color(0xff2A6550),
                          widthc: .38,
                          height: 100,
                          txt1: "Best Bank",
                          txt2: "1142524899652",
                          txt3: "35872.5",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Image.asset(
                            "assets/images/arrow_right.png",
                            height: 23,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff343645)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Add/Manage Accounts",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
