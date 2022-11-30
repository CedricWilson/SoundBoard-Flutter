import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:neopop/neopop.dart';
import 'package:soundboard/pages/home/widgets/button.dart';
import 'package:soundboard/utils/functions.dart';

import '../../widgets/c_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> list = [
    'LKMG',
    'Muje Ghar jana hai',
    'Dukhan Kholte hai',
    'Fire karega!!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: _body());
  }

  _body() {
    return SafeArea(
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            vSpace(30),
            _badaButton(list[0]),
            _grid(list.sublist(1, 4)),
          ],
        ).paddingSymmetric(vertical: 10, horizontal: horizontalPadding),
      ),
    );
  }

  _badaButton(String name) {
    return Container(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: CButton(name: name),
    );
  }

  _grid(List<String> _list) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(bottom: bottomPadding),
      itemCount: _list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 16 / 5,
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0),
      itemBuilder: (BuildContext context, int index) {
        return CButton(name: _list[index]);
      },
    );
  }
}
