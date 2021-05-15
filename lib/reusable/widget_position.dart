import 'package:flutter/material.dart';

class WidgetPosition {
  getSizes(GlobalKey key) {
    final RenderBox renderBoxRed = key.currentContext.findRenderObject();
    final sizeRed = renderBoxRed.size;
    // print("SIZE: $sizeRed");
    return [sizeRed.width, sizeRed.height];
  }

  getPositions(GlobalKey key) {
    final RenderBox renderBoxRed = key.currentContext.findRenderObject();
    final positionRed = renderBoxRed.localToGlobal(Offset.zero);
    // print("POSITION: $positionRed ");
    return [positionRed.dx, positionRed.dy];
  }
}
