import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/data.dart';
import 'package:flutter_ui_demo_1/widgets/customize_recent_widget.dart';


class RecentsWidget extends StatelessWidget {
  const RecentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Recents",
          style: textThemeStyle.displayMedium,
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRecentWidget(position: "Sol Üst", imageUrl: ImageData.einstein, widthMultiplier: 0.17, heightMultiplier: 0.27,),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                CustomRecentWidget(position: "Sol Alt", imageUrl: ImageData.elonMusk, widthMultiplier: 0.17, heightMultiplier: 0.31,),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.02),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRecentWidget(position: "Sağ Üst", imageUrl: ImageData.ataturk, widthMultiplier: 0.21, heightMultiplier: 0.33,),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                CustomRecentWidget(position: "Sağ Alt", imageUrl: ImageData.markZuck, widthMultiplier: 0.21, heightMultiplier: 0.25,),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
