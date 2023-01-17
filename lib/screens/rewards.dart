import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/utils/colors.dart';
import 'package:mobile_payment_app/widgets/offersContainer.dart';

class Rewards extends StatelessWidget {
  const Rewards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 10),
            child: Container(
              padding: EdgeInsets.all(14),
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff1F222A)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Cashbacks earned",
                    style: Styles.headLineStyle1.copyWith(fontSize: 17),
                  ),
                  Text(
                    "\$507",
                    style: TextStyle(fontSize: 40, color: Color(0xffB0BEC5)),
                  ),
                  Text(
                    "+88 Rs This Month",
                    style: TextStyle(fontSize: 16, color: Color(0xffAAAAAA)),
                  ),
                  SizedBox(
                    height: 10,
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
                        "View your cashback history ",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "Scrachcards won",
            style: Styles.headLineStyle1.copyWith(fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Row(
              children: [
                Container(
                  height: 105,
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff242042)),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20, right: 15.0),
                    child: Image.asset(
                      "assets/images/Loading.png",
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff242042)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff242042)),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Collect Rewards",
            style: Styles.headLineStyle1.copyWith(fontSize: 17),
          ),
          SizedBox(
            height: 15,
          ),
          OReusableContainer(
            img: "r1",
            color: Color(0xff242042),
            txt1: "Flat 50 off On food Delivery",
            txt3: "on orders above 99 on Swaggy, Somato",
            container: Container(
              height: 30,
              width: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFA4D96).withOpacity(.15)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Collect Now ",
                  style: TextStyle(fontSize: 14, color: Color(0xffFA4D96)),
                ),
              ),
            ),
          ),
          OReusableContainer(
            img: "r2",
            color: Color(0xff422038),
            txt1: "20% Cashback on Amazon",
            txt3: "Upto Rs 150 Minimum Order 1000",
            container: Container(
              height: 30,
              width: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFA4D96).withOpacity(.15)),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Collect Now ",
                  style: TextStyle(fontSize: 14, color: Color(0xffFA4D96)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
