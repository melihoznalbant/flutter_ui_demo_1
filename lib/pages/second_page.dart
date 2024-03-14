import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/widgets/message_second_page.dart';
import 'package:flutter_ui_demo_1/widgets/place_mutual_friends.dart';
//import 'package:flutter_ui_demo_1/icon_painter.dart';
import 'package:flutter_ui_demo_1/widgets/second_page_appbar.dart';
import 'package:flutter_ui_demo_1/widgets/subheading_widget.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String message;
  const SecondPage(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.message});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final textThemeStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height*0.01),
            child: SecondPageAppBar(name: name, imageUrl: imageUrl, message: message),
          ),
          SizedBox(
            height: size.height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height*0.02),
            child: const SubHeadingWidget(subhead: "Messages"),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height*0.02),
            child: SecondPageMessage(message: message, name: name),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Expanded(child: SingleChildScrollView(scrollDirection: Axis.vertical,child: PlaceAndMutualFriends(),)),
        ],
      ),
    );
  }
}
