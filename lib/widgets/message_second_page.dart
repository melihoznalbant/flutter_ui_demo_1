import 'package:flutter/material.dart';
import 'dart:ui';

class SecondPageMessage extends StatelessWidget {

  final String name;
  final String message;

  const SecondPageMessage({super.key, required this.message, required this.name});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final textThemeStyle = Theme.of(context).textTheme;

    return GestureDetector(
                  onTap: () {
                    return showCustomDialog(context, message, name);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(size.height * 0.01),
                    child: Container(
                      margin: EdgeInsets.only(bottom: size.height * 0.015),
                      padding: EdgeInsets.all(size.height * 0.015),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(size.height * 0.015),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset:
                                Offset(size.height * 0.006, size.height * 0.006),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(name,
                              style: textThemeStyle.labelLarge),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            message,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: textThemeStyle.labelMedium,
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text("Reply", style: textThemeStyle.labelSmall,)
                        ],
                      ),
                    ),
                  ),
                );
  }


  void showCustomDialog(BuildContext context, String message, String name) {
    final size = MediaQuery.of(context).size;
    final textThemeStyle = Theme.of(context).textTheme;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: AlertDialog(
            contentPadding: EdgeInsets.all(size.height * 0.03),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  size.height * 0.02,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textThemeStyle.labelLarge,
                ),
                SizedBox(height: size.height * 0.02),
                Text(message, style: textThemeStyle.labelMedium,),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Close', style: textThemeStyle.labelSmall,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}