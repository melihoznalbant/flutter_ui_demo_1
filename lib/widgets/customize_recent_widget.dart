import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/pages/second_page.dart';
import 'package:flutter_ui_demo_1/provider.dart';
import 'package:provider/provider.dart';

class CustomRecentWidget extends StatefulWidget {
  final String position;
  final String imageUrl;
  final double widthMultiplier;
  final double heightMultiplier;
  final String name;
  final String message;

  CustomRecentWidget(
      {required this.position,
      required this.imageUrl,
      required this.widthMultiplier,
      required this.heightMultiplier,
      required this.name,
      required this.message});

  @override
  State<CustomRecentWidget> createState() => _CustomRecentWidgetState();
}

class _CustomRecentWidgetState extends State<CustomRecentWidget> {
   

  @override
  Widget build(BuildContext context) {
    bool isFavorited = Provider.of<FavoriteModel>(context).favoriMi(widget.position);
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SecondPage(imageUrl: widget.imageUrl, name: widget.name, message: widget.message);
            },
          ),
        );
        /* setState(() {
          isFavorited = !isFavorited;
        }); */
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(size.height * 0.015),
            child: SizedBox(
              width: size.height * widget.widthMultiplier,
              height: size.width * widget.heightMultiplier,
              child: Image.network(
                widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Consumer<FavoriteModel>(
            builder: (context, favoriteModel, child) => favoriteModel.favoriMi(widget.imageUrl)
                ? Positioned(
                    bottom: size.height * 0.01,
                    right: size.height * 0.005,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ): Container())
        ],
      ),
    );
  }
}
