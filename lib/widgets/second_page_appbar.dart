import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/icon_painter.dart';
import 'package:flutter_ui_demo_1/provider.dart';
import 'package:provider/provider.dart';

class SecondPageAppBar extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String message;
  const SecondPageAppBar(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.message});

  @override
  Widget build(BuildContext context) {
     bool isFavorited = Provider.of<FavoriteModel>(context).favoriMi(imageUrl);
    final size = MediaQuery.of(context).size;
    final textThemeStyle = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            return Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.02,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: size.height * 0.08,
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Text(
              name,
              style: textThemeStyle.displayMedium,
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Container(
              width: size.width * 0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.mail_outline,
                    size: size.height * 0.04,
                    color: Colors.grey,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(size.height * 0.01),
                          color: Colors.grey.shade300),
                      padding: EdgeInsets.all(size.height * 0.01),
                      child: Icon(
                        Icons.add,
                        size: size.height * 0.025, color: Colors.grey.shade600,
                      ),),
                  Consumer<FavoriteModel>(
                    builder: (context, favoriteModel, child) => GestureDetector(
                      onTap: () {
                        final yeniDurum = !favoriteModel.favoriMi(imageUrl);
                        favoriteModel.favoriDurumunuGuncelle(imageUrl, yeniDurum: yeniDurum);
                      },
                      child: Icon(
                        Icons.favorite,
                        size: size.height * 0.035,
                        color: Provider.of<FavoriteModel>(context).favoriMi(imageUrl) ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            return Navigator.of(context).pop();
          },
          child: CustomPaint(
            painter: MenuIconPainter(),
            size: const Size(24, 24),
          ),
        ),
      ],
    );
  }
}
