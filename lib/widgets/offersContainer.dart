import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OReusableContainer extends StatelessWidget {
  String? txt1;
  String? txt2;
  String? txt3;
  String? txt4;
  final String? img;
  Color? txtColor;
  final Color? color;
  final Color? firstColor;
  Widget? container;
  OReusableContainer(
      {super.key,
      this.txtColor,
      this.color,
      this.firstColor,
      required this.img,
      this.container,
      this.txt1,
      this.txt3,
      this.txt2,
      this.txt4});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/$img.png",
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt1!,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  txt2 == null
                      ? const SizedBox()
                      : Text(txt2!,
                          style: TextStyle(
                              fontSize: 16, color: Color(0xffECEFF1))),
                  txt3 == null
                      ? const SizedBox()
                      : Text(txt3!,
                          style: TextStyle(
                              fontSize: 10, color: Color(0xffB0BEC5))),
                  txt4 == null
                      ? const SizedBox(
                          height: 5,
                        )
                      : Text(txt4!,
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                  container == null
                      ? const SizedBox()
                      : Container(
                          child: container!,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
