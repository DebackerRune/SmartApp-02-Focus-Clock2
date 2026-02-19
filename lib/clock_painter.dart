import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final DateTime dateTime;
  final Color hourHandColor;
  final Color minuteHandColor;
  final Color secondHandColor;
  final Color tickColor;
  final Color centerDotColor;

  ClockPainter({
    required this.dateTime,
    required this.hourHandColor,
    required this.minuteHandColor,
    required this.secondHandColor,
    required this.tickColor,
    required this.centerDotColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final center = Offset(centerX, centerY);
    final radius = min(centerX, centerY);

    // Draw clock border
    final borderPaint = Paint()
      ..color = tickColor.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawCircle(center, radius - 2, borderPaint);

    // Draw tick marks
    _drawTickMarks(canvas, center, radius);

    // Calculate angles
    final secondAngle = (dateTime.second * 6 - 90) * pi / 180;
    final minuteAngle = ((dateTime.minute + dateTime.second / 60) * 6 - 90) * pi / 180;
    final hourAngle = ((dateTime.hour % 12 + dateTime.minute / 60) * 30 - 90) * pi / 180;

    // Draw hour hand
    _drawHand(
      canvas,
      center,
      hourAngle,
      radius * 0.5,
      hourHandColor,
      8,
    );

    // Draw minute hand
    _drawHand(
      canvas,
      center,
      minuteAngle,
      radius * 0.7,
      minuteHandColor,
      6,
    );

    // Draw second hand
    _drawHand(
      canvas,
      center,
      secondAngle,
      radius * 0.8,
      secondHandColor,
      2,
    );

    // Draw center dot
    final centerDotPaint = Paint()..color = centerDotColor;
    canvas.drawCircle(center, 8, centerDotPaint);
  }

  void _drawTickMarks(Canvas canvas, Offset center, double radius) {
    for (int i = 0; i < 12; i++) {
      final angle = (i * 30 - 90) * pi / 180;
      final isHourMark = i % 3 == 0;
      
      final startRadius = radius * (isHourMark ? 0.85 : 0.9);
      final endRadius = radius * 0.95;

      final start = Offset(
        center.dx + cos(angle) * startRadius,
        center.dy + sin(angle) * startRadius,
      );
      final end = Offset(
        center.dx + cos(angle) * endRadius,
        center.dy + sin(angle) * endRadius,
      );

      final tickPaint = Paint()
        ..color = tickColor
        ..strokeWidth = isHourMark ? 3 : 1.5
        ..strokeCap = StrokeCap.round;

      canvas.drawLine(start, end, tickPaint);
    }
  }

  void _drawHand(
    Canvas canvas,
    Offset center,
    double angle,
    double length,
    Color color,
    double width,
  ) {
    final handPaint = Paint()
      ..color = color
      ..strokeWidth = width
      ..strokeCap = StrokeCap.round;

    final handEnd = Offset(
      center.dx + cos(angle) * length,
      center.dy + sin(angle) * length,
    );

    canvas.drawLine(center, handEnd, handPaint);
  }

  @override
  bool shouldRepaint(ClockPainter oldDelegate) {
    return oldDelegate.dateTime != dateTime;
  }
}
