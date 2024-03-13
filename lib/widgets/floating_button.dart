import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
        width: size.height*0.09,
        height: size.height*0.09,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: size.height*0.05,
        ),
      );
  }
}