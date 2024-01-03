import 'dart:math';

import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      width: 300,
      height: 300,
      child: CustomPaint(
        painter: PieChartPainter(),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = size.width / 2;

    List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
    ];

    List<String> labels = [
      'Section 1',
      'Section 2',
      'Section 3',
      'Section 4',
      'Section 5',
    ];

    double startAngle = 0;
    double sweepAngle = 360 / colors.length;

    for (int i = 0; i < colors.length; i++) {
      final Paint paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        radians(startAngle),
        radians(sweepAngle),
        true,
        paint,
      );

      // Calculate text position
      double textAngle = startAngle + sweepAngle / 2;
      double textX = centerX + radius * 0.6 * cos(radians(textAngle));
      double textY = centerY + radius * 0.7 * sin(radians(textAngle));

      // Draw text
      TextSpan span = TextSpan(
        text: labels[i],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      );
      TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );

      tp.layout();
      tp.paint(canvas, Offset(textX - tp.width / 2, textY - tp.height / 2));

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  double radians(double degrees) {
    return degrees * (pi / 180);
  }
}
