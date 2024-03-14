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
                CustomRecentWidget(position: "Sol Üst", imageUrl: MessageData().messages[1]["link"].toString(), widthMultiplier: 0.17, heightMultiplier: 0.27,name: MessageData().messages[1]["subject"].toString(), message: MessageData().messages[1]["body"].toString(),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                CustomRecentWidget(position: "Sol Alt", imageUrl: MessageData().messages[2]["link"].toString(), widthMultiplier: 0.17, heightMultiplier: 0.31,name: MessageData().messages[2]["subject"].toString(), message: MessageData().messages[2]["body"].toString(),),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.02),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRecentWidget(position: "Sağ Üst", imageUrl: MessageData().messages[0]["link"].toString(), widthMultiplier: 0.21, heightMultiplier: 0.33,name: MessageData().messages[0]["subject"].toString(), message: MessageData().messages[0]["body"].toString(),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                CustomRecentWidget(position: "Sağ Alt", imageUrl: MessageData().messages[3]["link"].toString(), widthMultiplier: 0.21, heightMultiplier: 0.25,name: MessageData().messages[3]["subject"].toString(), message: MessageData().messages[3]["body"].toString(),),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
