 import 'package:flutter/material.dart';

var gap = const SizedBox(
      height: 20,
    );
    var bg = const Color(0xffb7410e);
    var btnCol = const Color.fromARGB(255, 153, 35, 35);
    var btnShadowCol = const Color(0xaab7410e);
    double bigBtn = 60;
    var halfRoundBtnSize = const Size(60, 50);

    var roundBtnStyle = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        fixedSize: const Size(70, 70));
    var biggerBtnStyle = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        fixedSize: const Size(90, 90));
    var roundedTopBtn = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        fixedSize: halfRoundBtnSize);

    var roundedBottomBtn = ElevatedButton.styleFrom(
        shadowColor: btnShadowCol,
        backgroundColor: btnCol,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        fixedSize: halfRoundBtnSize);