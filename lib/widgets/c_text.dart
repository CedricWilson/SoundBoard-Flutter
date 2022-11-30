// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class CText extends StatelessWidget {
  dynamic label;
  final Color color;
  final bool isUnderlined;
  final bool isStriked;
  final bool isItalic;
  final double size;
  final bool fitted;
  final bool center;
  final bool isBold;
  final TextOverflow? overflow;
  final bool multiLine;
  final int? weight;
  final double? height;
  final int? maxLines;
  final bool justify;
  final bool baseline;

  CText(
    this.label, {
    this.color = Colors.black,
    this.size = 16.0,
    this.weight,
    this.overflow,
    this.fitted = false,
    this.isItalic = false,
    this.isUnderlined = false,
    this.isStriked = false,
    this.center = false,
    this.justify = false,
    this.isBold = false,
    this.multiLine = true,
    this.height,
    this.baseline = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    label ??= '';
    return fitted
        ? FittedBox(
            child: _text(),
          )
        : _text();
  }

  _text() {
    
    return RichText(
      textAlign: textAlign(),
      overflow: textOverflow(overflow) ?? TextOverflow.visible,
      maxLines: maxLines,
      softWrap: multiLine,
      text: TextSpan(
          text: label.toString(),
          style: TextStyle(
            fontStyle: isItalic ? FontStyle.italic : null,
            fontWeight: fontWeight(),
            height: height,
            fontSize: getSize(size) ?? 4,
            color: color,
            decoration: underline(isUnderlined, isStriked),
          )),
    );
  }

  

  getSize(double d) {
    // return (d - 10).w;
    return d;
  }

  FontWeight fontWeight() {
    if (isBold == true) {
      return FontWeight.bold;
    }
    if (weight != null) {
      switch (weight) {
        case 1:
          return FontWeight.w100;
        case 2:
          return FontWeight.w200;
        case 3:
          return FontWeight.w300;
        case 4:
          return FontWeight.w400;
        case 5:
          return FontWeight.w500;
        case 6:
          return FontWeight.w600;
        case 7:
          return FontWeight.w700;
        case 8:
          return FontWeight.w800;
        case 9:
          return FontWeight.w900;
      }
    } else {
      return FontWeight.w500;
    }
    return FontWeight.w500;
  }

  double fontsize(double size) {
    return size;
  }

  underline(bool underline, bool isStriked) {
    if (underline == true) {
      return TextDecoration.underline;
    }
    if (isStriked == true) {
      return TextDecoration.lineThrough;
    }
  }

  textAlign() {
    // if (baseline) {
    //   return TextAlign.;
    // }
    if (center) {
      return TextAlign.center;
    }
    if (justify) {
      return TextAlign.justify;
    }
    return TextAlign.left;
  }

  textOverflow(TextOverflow? overflow) {
    return overflow;
  }
}
