import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';

class SemiCirclePainter extends CustomPainter {
  final Color color;

  SemiCirclePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    const rect = Rect.fromLTWH(0, 0, 450, 400);
    const startAngle = 0.0;
    const sweepAngle = pi;

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
