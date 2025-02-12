import 'package:flutter/material.dart';

// class CustomAppBarShape extends OutlinedBorder {
//   // Implementing the constructor allows the CustomAppBarShape to be
//   // properly compared when calling the `identical` method.
//   const CustomAppBarShape({super.side});

//   Path _getPath(Rect rect) {
//     final Path path = Path();
//     final Size size = Size(rect.width, rect.height * 3.5);

//     final double p0 = size.height;
//     path.lineTo(0.0, p0);

//     final Offset controlPoint = Offset(size.width * 0.25, size.height*0.7);
//     final Offset midpoint = Offset(size.width*0.65, size.height * 0.95 );
//     path.quadraticBezierTo(
//         controlPoint.dx, controlPoint.dy, midpoint.dx, midpoint.dy);
//     final Offset controlPointTwo = Offset(size.width*0.85, size.height*1.05);
//     final Offset endPoint = Offset(size.width, size.height*1.05);
//     path.quadraticBezierTo(
//         controlPointTwo.dx, controlPointTwo.dy, endPoint.dx, endPoint.dy);

//     path.lineTo(size.width, 0.0);
//     path.close();

//     return path;
//   }

//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     return _getPath(rect.inflate(side.width));
//   }

//   @override
//   Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
//     return _getPath(rect);
//   }

//   @override
//   void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
//     if (rect.isEmpty) {
//       return;
//     }

//     // Create a gradient
//   final Paint gradientPaint = Paint()
//     ..shader = LinearGradient(
//       colors: [
//         const Color(0xFFFCBF49),
//         const Color(0xFFF77F00),
//         const Color(0xFFDC7100),
//       ],
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//     ).createShader(rect);

//     canvas.drawPath(
//       getOuterPath(rect, textDirection: textDirection),
//        gradientPaint,
//       // side.toPaint(),
//     );
//   }

//   @override
//   ShapeBorder scale(double t) {
//     return CustomAppBarShape(side: side.scale(t));
//   }

//   @override
//   OutlinedBorder copyWith({BorderSide? side}) {
//     return CustomAppBarShape(side: side ?? this.side);
//   }

//   @override
//   ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
//     if (a is CustomAppBarShape) {
//       return CustomAppBarShape(side: BorderSide.lerp(a.side, side, t));
//     }
//     return super.lerpFrom(a, t);
//   }

//   @override
//   ShapeBorder? lerpTo(ShapeBorder? b, double t) {
//     if (b is CustomAppBarShape) {
//       return CustomAppBarShape(side: BorderSide.lerp(b.side, side, t));
//     }
//     return super.lerpTo(b, t);
//   }
// }

class CustomAppBarShape extends OutlinedBorder {
  // Implementing the constructor allows the CustomAppBarShape to be
  // properly compared when calling the `identical` method.
  const CustomAppBarShape({super.side});

  Path _getPath(Rect rect) {
    final Path path = Path();
    final Size size = Size(rect.width, rect.height * 4.0);

    final double p0 = size.height * 0.75;
    path.lineTo(0.0, p0);

    final Offset controlPoint = Offset(size.width * 0.4, size.height);
    final Offset endPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(rect.inflate(side.width));
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(rect);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (rect.isEmpty) {
      return;
    }
    canvas.drawPath(
      getOuterPath(rect, textDirection: textDirection),
      side.toPaint(),
    );
  }

  @override
  ShapeBorder scale(double t) {
    return CustomAppBarShape(side: side.scale(t));
  }

  @override
  OutlinedBorder copyWith({BorderSide? side}) {
    return CustomAppBarShape(side: side ?? this.side);
  }

  // The lerpFrom method is necessary for the CustomAppBarShape to be
  // properly animated when changing the AppBar shape and when
  // the AppBar is rebuilt.
  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is CustomAppBarShape) {
      return CustomAppBarShape(side: BorderSide.lerp(a.side, side, t));
    }
    return super.lerpFrom(a, t);
  }

  // The lerpTo method is necessary for the CustomAppBarShape to be
  // properly animated when changing the AppBar shape and when
  // the AppBar is rebuilt.
  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is CustomAppBarShape) {
      return CustomAppBarShape(side: BorderSide.lerp(b.side, side, t));
    }
    return super.lerpTo(b, t);
  }
}
