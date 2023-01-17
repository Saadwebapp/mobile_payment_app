import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/utils/colors.dart';

class ReusableContainer extends StatelessWidget {
  final String img;
  String? txt;
  final Color? color;
  final Color? firstColor;
  final double? height;
  final double widthc;
  ReusableContainer(
      {super.key,
      required this.widthc,
      this.height = 42,
      this.color,
      this.firstColor,
      required this.img,
      this.txt = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9.0, right: 5),
      child: Row(
        children: [
          Container(
            height: height,
            width: MediaQuery.of(context).size.width * widthc,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color),
            child: Row(
              children: [
                Container(
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: firstColor,
                  ),
                  child: Image.asset(
                    "assets/images/$img.png",
                    alignment: Alignment.center,
                    // height: 20,
                  ),
                ),
                Text(
                  txt!,

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
