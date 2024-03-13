import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final textThemeStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome back Athul!",style: textThemeStyle.displayLarge),
        SizedBox(height: size.height*0.005,),
        Text("Organized for you", style: textThemeStyle.displaySmall,)
      ],
    );
  }
}