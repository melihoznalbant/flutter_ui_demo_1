import 'package:flutter/material.dart';

class SubHeadingWidget extends StatelessWidget {
  final String subhead;
  const SubHeadingWidget({super.key, required this.subhead});

  @override
  Widget build(BuildContext context) {

    final textThemeStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subhead,
              style: textThemeStyle.displayMedium,
            ),
            Row(
              children: [
                Text(
                  "See all  ",
                  style: textThemeStyle.bodyMedium,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: size.height*0.018,
                ),
              ],
            )
          ],
        );
  }
}