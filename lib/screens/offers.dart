import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/widgets/offersContainer.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          OReusableContainer(
            img: "o1",
            txt1: "Mobile Recharge Offer",
            txt2: "Use Code FIRST20",
            txt3:
                "Get 20% Instant Cashback Upto RS 50 on\nYour first mobile recharge. T&C apply",
            color: Color(0xff242042),
          ),
          OReusableContainer(
            img: "o2",
            txt1: "DTH Recharge Offer",
            txt2: "Use Code FIRSTDTH20",
            txt3:
                "Get 20% Instant Cashback Upto RS 50 on\nYour first mobile recharge. T&C apply",
            color: Color(0xff3B2042),
          ),
          OReusableContainer(
            img: "o3",
            txt1: "Flipcart Offer",
            txt3:
                "Shop on Flipcart using our payment system\nto get upto 50%cashback. T&C apply",
            color: Color(0xff422028),
          ),
          OReusableContainer(
            img: "o4",
            txt1: "Money Transfer Offer",
            txt3:
                "Get a scratch card with asuured cashback and\ncoupons on Money Transfer of R 500 or\nmore. T&C apply",
            color: Color(0xff242042),
          ),
          OReusableContainer(
            img: "o5",
            txt1: "Rs 50 off on Flights",
            txt3:
                "Get instant discount on flat 50 Rs on Flight\ntickets bookings. T&C apply",
            color: Color(0xff3B2042),
            txt4: "Go to offer page",
            
          ),
        ],
      ),
    );
  }
}
