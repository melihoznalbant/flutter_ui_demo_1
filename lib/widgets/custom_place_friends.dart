import 'package:flutter/material.dart';

class CustomPlacesWidget extends StatelessWidget {

  final List<Map<String, String>> photos;

  const CustomPlacesWidget({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.height*0.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: photos.map((photo) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size.height * 0.015),
                child: SizedBox(
                  width: size.height * 0.12,
                  height: size.width * 0.4,
                  child: Image.network(
                    photo['url']!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
