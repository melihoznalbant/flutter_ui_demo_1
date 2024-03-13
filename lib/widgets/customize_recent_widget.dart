import 'package:flutter/material.dart';

class CustomRecentWidget extends StatefulWidget {
  final String position;
  final String imageUrl;
  final double widthMultiplier;
  final double heightMultiplier;

  CustomRecentWidget(
      {required this.position,
      required this.imageUrl,
      required this.widthMultiplier,
      required this.heightMultiplier});

  @override
  State<CustomRecentWidget> createState() => _CustomRecentWidgetState();
}

class _CustomRecentWidgetState extends State<CustomRecentWidget> {

  bool isFavorited = false; 
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorited = !isFavorited;
        });
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(size.height * 0.015),
            child: SizedBox(
              width: size.height * widget.widthMultiplier,
              height: size.width * widget.heightMultiplier,
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (isFavorited) Positioned(
            bottom: size.height*0.01,
            right: size.height* 0.005,
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
