import 'package:flutter/material.dart';
import 'package:flutter_art/art/envelope/constants.dart';

class EnvelopeBackSide extends StatelessWidget {
  const EnvelopeBackSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: EnvelopeBackSidePainter(),
      size: Size(kEnvelopeWidth, kEnvelopeHeight),
    );
  }
}

class EnvelopeBackSidePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = Colors.grey[800]!
      ..style = PaintingStyle.fill;

    final points = [
      Offset(0, 0),
      Offset(size.width * 0.4, size.height * 0.5),
      Offset(size.width * 0.6, size.height * 0.5),
      Offset(size.width, 0),
      Offset(size.width, size.height),
      Offset(0, size.height),
    ];
    final shapePath = Path();
    shapePath.addPolygon(points, true);
    canvas.drawPath(shapePath, fillPaint);

    final borderPaint = Paint()
      ..color = Colors.grey[400]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    final borderPath = Path();
    borderPath.moveTo(0, 0);
    borderPath.lineTo(size.width * 0.4, size.height * 0.5);
    borderPath.lineTo(0, size.height);
    borderPath.close();
    borderPath.moveTo(size.width, size.height);
    borderPath.lineTo(size.width, 0);
    borderPath.lineTo(size.width * 0.6, size.height * 0.5);
    borderPath.lineTo(size.width, size.height);
    borderPath.lineTo(0, size.height);
    borderPath.moveTo(size.width * 0.4, size.height * 0.5);
    borderPath.lineTo(size.width * 0.6, size.height * 0.5);
    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
