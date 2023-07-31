import 'package:flutter/material.dart';

class AvaterOther extends StatelessWidget {
  @override
  AvaterOther(
      {required this.text2,
        required this.text1,
        required this.avater,
        required this.text3});

  String avater;
  String text1;
  String text2;
  String text3;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.only(
          right: 20,
          top: 10,
        ),
        height: 100,
        width: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(text2),
                Text( text3)
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(avater),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              // spreadRadius: .2
              blurRadius: 8,
              color: Colors.grey.shade300,
              // spreadRadius: 2.5,
            )
          ],

          borderRadius: BorderRadius.circular(20),
          // color: Color(0xff548CFF),
          border: Border.all(color: Colors.grey.shade200),

          // Color(0xff548CFF)
        ),
      ),
    );
  }
}