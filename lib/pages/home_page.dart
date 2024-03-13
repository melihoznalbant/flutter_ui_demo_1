import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/widgets/contacts_widget.dart';
import 'package:flutter_ui_demo_1/widgets/floating_button.dart';
import 'package:flutter_ui_demo_1/widgets/messages_widget.dart';
import 'package:flutter_ui_demo_1/widgets/recents_widget.dart';
import 'package:flutter_ui_demo_1/widgets/subheading_widget.dart';
import 'package:flutter_ui_demo_1/widgets/welcome_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: const FloatingButtonWidget(),
      body: Padding(
        padding: EdgeInsets.only(
          left: size.height * 0.03,
          right: size.height * 0.03,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.08,
            ),
            const WelcomeWidget(),
            SizedBox(
              height: size.height * 0.04,
            ),
            const Center(child: RecentsWidget()),
            SizedBox(
              height: size.height * 0.04,
            ),
            const ContactWidgets(),
            SizedBox(
              height: size.height * 0.04,
            ),
            const SubHeadingWidget(subhead: "Messages"),
            SizedBox(height: size.height * 0.01),
            MessageList()
          ],
        ),
      ),
    );
  }
}
