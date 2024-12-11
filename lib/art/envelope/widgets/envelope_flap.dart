import 'package:flutter/material.dart';

class EnvelopeFlap extends StatelessWidget {
  const EnvelopeFlap({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: EnvelopeFlapPainter(),
      size: Size(width, width),
    );
  }
}

class EnvelopeFlapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.grey[400]!
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;

    final path = Path();

    final points = [
      Offset(0, 0),
      Offset(size.width, 0),
      Offset(size.width, 15),
      Offset(size.width / 2, size.height / 1.5),
      Offset(0, 15),
    ];

    path.addPolygon(points, true);
    canvas.drawPath(
      path,
      fillPaint,
    );
    canvas.drawPath(
      path,
      borderPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
