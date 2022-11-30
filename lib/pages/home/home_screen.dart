import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/neopop.dart';
import 'package:soundboard/pages/home/widgets/button.dart';

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
    'Chalo Dukhan Kholte hai',
    'Fire karega!!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.2), body: _body());
  }

  _body() {
    return SafeArea(
      child: GridView.builder(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: MediaQuery.of(context).size.width * 5 / 100),
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 5,
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0),
        itemBuilder: (BuildContext context, int index) {
          return CButton(name: list[index]);
        },
      ),
    );
  }
}
