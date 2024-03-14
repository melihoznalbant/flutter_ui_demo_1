import 'package:flutter/material.dart';

class MenuIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    // Üst çizgi
    canvas.drawLine(Offset(0, size.height * 0.2), Offset(-size.width, size.height * 0.2), paint);
    
    // Orta çizgi
    canvas.drawLine(Offset(size.width * 0, size.height * 0.5), Offset(-size.width * 0.8, size.height * 0.5), paint);
    
    // Alt çizgi
    canvas.drawLine(Offset(size.width * 0, size.height * 0.8), Offset(-size.width * 0.6, size.height * 0.8), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
