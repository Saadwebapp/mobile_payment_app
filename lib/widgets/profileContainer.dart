import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileContainer extends StatelessWidget {
  String txt;
  String? img;
  ProfileContainer({super.key, this.txt = "", this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
          color: Color(0xff343645), borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 3),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            txt,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Image.asset("assets/images/$img.png")
        ]),
      ),
    );
  }
}
