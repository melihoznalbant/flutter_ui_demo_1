import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/data.dart';

class ContactUserWidget extends StatelessWidget {
  ContactUserWidget({super.key});

  final List photos = UsersData().users;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final textThemeStyle = Theme.of(context).textTheme;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, 
      child: Row(
        children: photos.map((photo) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.015), 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: size.width*0.09, 
                  backgroundImage: NetworkImage(photo['url']!),
                ),
                SizedBox(height: size.height*0.01), 
                Text(photo['name']!, style: textThemeStyle.bodySmall,), 
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}