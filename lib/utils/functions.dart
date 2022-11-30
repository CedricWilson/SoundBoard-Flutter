import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget vSpace(num n) {
  return SizedBox(
    height: n.toDouble(),
  );
}

Widget hSpace(num n) {
  return SizedBox(
    width: n.toDouble(),
  );
}


double horizontalPadding = MediaQuery.of(Get.context!).size.width * 5 / 100;
double bottomPadding = MediaQuery.of(Get.context!).size.height * 2 / 100;
