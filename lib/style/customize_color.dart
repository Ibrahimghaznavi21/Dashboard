import 'package:flutter/material.dart';

class CustomSizer {
  static double getHorizontalSize(BuildContext context, double widthParam) {
    double horizontalWidth = MediaQuery.of(context).size.width * (widthParam / 1158);
    return horizontalWidth;
  }

  static double getVerticalSize(BuildContext context, double heightParam) {
    double verticalHeight =
        MediaQuery.of(context).size.height * (heightParam / 1511);
    return verticalHeight;
  }

  static double getChildHorizontalSize(
      BuildContext context, double widthParam, double parentWidth) {
    return MediaQuery.of(context).size.width * (widthParam / 1138);
  }

  static double getChildVerticalSize(
      BuildContext context, double heightParam, double parentHeight) {
    return parentHeight * (heightParam / 1511);
  }

  static EdgeInsets getPadding({
    required BuildContext context,
    double? leftPercent,
    double? topPercent,
    double? rightPercent,
    double? bottomPercent,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double leftPadding =
    leftPercent != null ? screenWidth * (leftPercent / 100) : 0.0;
    double topPadding =
    topPercent != null ? screenHeight * (topPercent / 100) : 0.0;
    double rightPadding =
    rightPercent != null ? screenWidth * (rightPercent / 100) : 0.0;
    double bottomPadding =
    bottomPercent != null ? screenHeight * (bottomPercent / 100) : 0.0;

    return EdgeInsets.fromLTRB(
      leftPadding,
      topPadding,
      rightPadding,
      bottomPadding,
    );
  }

  static EdgeInsets getChildPadding({
    required BuildContext context,
    double? leftPercent,
    double? topPercent,
    double? rightPercent,
    double? bottomPercent,
    required double screenWidth,
    required double screenHeight,
  }) {
    double leftPadding =
    leftPercent != null ? screenWidth * (leftPercent / 100) : 0.0;
    double topPadding =
    topPercent != null ? screenHeight * (topPercent / 100) : 0.0;
    double rightPadding =
    rightPercent != null ? screenWidth * (rightPercent / 100) : 0.0;
    double bottomPadding =
    bottomPercent != null ? screenHeight * (bottomPercent / 100) : 0.0;

    return EdgeInsets.fromLTRB(
        leftPadding,
        topPadding,
        rightPadding,
        bottomPadding,
        );
    }
}
