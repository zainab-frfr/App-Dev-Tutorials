import 'package:flutter/material.dart';

class CurvedArrow extends StatelessWidget {
  const CurvedArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(10, 10),
      painter: CurvedArrowPainter(),
    );
  }
}
class CurvedArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFF929292)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    // Draw the curve
    path.moveTo(size.width, size.height); // Starting point
    path.quadraticBezierTo(
      size.width * 0.4, size.height, // Control point
      size.width * 0.5, 0.0, // End point
    );

    // Add arrowhead
    final arrowPath = Path();
    final arrowHeadSize = 3.0;

    arrowPath.moveTo(size.width * 0.5, 0.0,); // Arrow base
    arrowPath.lineTo(
      size.width * 0.5 + arrowHeadSize,
      size.height * 0.0 + arrowHeadSize,
    );
    arrowPath.moveTo(size.width * 0.5, 0.0,); // Arrow base
    arrowPath.lineTo(
      size.width * 0.5 - arrowHeadSize,
      size.height * 0.0 + arrowHeadSize,
    );

    canvas.drawPath(path, paint);
    canvas.drawPath(arrowPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}