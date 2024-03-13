import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/data.dart';

/* class MessageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Interactive Message Container'),
        ),
        body: MessageList(),
      ),
    );
  }
} */

/* 
class MessageList extends StatelessWidget {
  final List<Map<String, String>> messages = MessageData().messages;

  MessageList({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final textThemeStyle = Theme.of(context).textTheme;

    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => showCustomDialog(context, messages[index]),
            child: Container(
              margin: EdgeInsets.all(size.height*0.01),
              padding: EdgeInsets.all(size.height*0.015),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(size.height * 0.015),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(size.height*0.006, size.height*0.006),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    messages[index]['subject']!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: size.height*0.01),
                  Text(
                    messages[index]['body']!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: size.height*0.01),
                  Text("Reply")
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showCustomDialog(BuildContext context, Map<String, String> message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final size = MediaQuery.of(context).size;
        final textThemeStyle = Theme.of(context).textTheme;
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: AlertDialog(
            contentPadding: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(size.height*0.02))),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message['subject']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: size.height*0.02),
                Text(message['body']!),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
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
 */

class MessageList extends StatelessWidget {
  final List<Map<String, String>> messages = MessageData().messages;

  MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textThemeStyle = Theme.of(context).textTheme;

    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.01),
          child: Column(
            children: List.generate(
              messages.length,
              (index) {
                return GestureDetector(
                  onTap: () => showCustomDialog(context, messages[index]),
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
                        Text(messages[index]['subject']!,
                            style: textThemeStyle.labelLarge),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          messages[index]['body']!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textThemeStyle.labelMedium,
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text("Reply", style: textThemeStyle.labelSmall,)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context, Map<String, String> message) {
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
                  message['subject']!,
                  style: textThemeStyle.labelLarge,
                ),
                SizedBox(height: size.height * 0.02),
                Text(message['body']!, style: textThemeStyle.labelMedium,),
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
