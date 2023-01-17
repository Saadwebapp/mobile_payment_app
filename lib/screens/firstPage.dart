import 'package:flutter/material.dart';
import 'package:mobile_payment_app/screens/login.dart';
import 'package:mobile_payment_app/utils/colors.dart';
import 'package:mobile_payment_app/widgets/smallCircle.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor1,
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  Login())
              );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                heightFactor: 7.3,
                alignment: Alignment.center,
                child: Image.asset("assets/images/logo.png")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.purple.withOpacity(.46),
                          offset: Offset(3, 3))
                    ],
                    color: Color(0xff4D5DFA),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "INSTANT PAY",
                    style: Styles.headLineStyle1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Your Perfect Payment Partner",
                style: Styles.headLineStyle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallCircle(
                    color: Colors.white,
                  ),
                  SmallCircle(),
                  SmallCircle(),
                  SmallCircle(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
