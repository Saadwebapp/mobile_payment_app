import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BContainer extends StatelessWidget {
  String? txt1;
  String? txt2;
  String? txt3;
  Color? txtColor;
  final Color? color;
  final Color? firstColor;
  final double? height;
  final double widthc;
  BContainer(
      {super.key,
      this.txtColor,
      required this.widthc,
      this.height = 42,
      this.color,
      this.firstColor,
      this.txt1 = "",
      this.txt3 = "",
      this.txt2 = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width * widthc,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
        Text(
          txt1!,
          style: TextStyle(fontSize: 21, color: txtColor),
        ),
        Text(
          txt2!,
          style: TextStyle(fontSize: 12, color: Color(0xffF4EDFF)),
        ),
        SizedBox(height: 5),
        Text(
          txt3!,
          style: TextStyle(fontSize: 21, color: Color(0xffEDFEFF)),
        ),
      ]),
    );
  }
}
