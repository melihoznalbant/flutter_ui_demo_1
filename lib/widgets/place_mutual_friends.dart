import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/data.dart';
import 'package:flutter_ui_demo_1/widgets/custom_place_friends.dart';
import 'package:flutter_ui_demo_1/widgets/subheading_widget.dart';

class PlaceAndMutualFriends extends StatelessWidget {
  const PlaceAndMutualFriends({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height*0.02),
          child: const SubHeadingWidget(subhead: "Places"),
        ),
        SizedBox(
            height: size.height * 0.02,
          ),
          CustomPlacesWidget(photos: PlacesData().places),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height*0.02),
            child: const SubHeadingWidget(subhead: "Mutual Friends"),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          CustomPlacesWidget(photos: FriendsData().friends),
      ],
    );
  }
}