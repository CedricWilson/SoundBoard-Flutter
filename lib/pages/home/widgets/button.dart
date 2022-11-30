import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/utils/color_utils.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

import '../../../widgets/c_text.dart';

class CButton extends StatelessWidget {
  final String name;
   CButton({super.key, required this.name});

  Color kSecondaryButtonLightColor = Colors.white;
  Color kBorderColorGreen = Colors.white.withOpacity(0.8);

  

  @override
  Widget build(BuildContext context) {
    return NeoPopButton(
      color: kSecondaryButtonLightColor,
      bottomShadowColor:
          ColorUtils.getVerticalShadow(kBorderColorGreen).toColor(),
      rightShadowColor:
          ColorUtils.getHorizontalShadow(kBorderColorGreen).toColor(),
      animationDuration: Duration(microseconds: 100),
      depth: 3,
      onTapUp: () {},
      border: Border.all(
        color: kBorderColorGreen,
        width: 1,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: CText(name,center: true,)),
          ],
        ),
      ),
    );
  }
}
