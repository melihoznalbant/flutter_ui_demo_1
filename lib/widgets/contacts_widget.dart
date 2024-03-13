import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/widgets/contact_user_widget.dart';
import 'package:flutter_ui_demo_1/widgets/subheading_widget.dart';

class ContactWidgets extends StatelessWidget {
  const ContactWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    //final textThemeStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SubHeadingWidget(subhead: "Contacts"),
        SizedBox(height: size.height*0.02),
        ContactUserWidget()
      ],
    );
  }
}
