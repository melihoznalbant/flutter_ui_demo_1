import 'package:flutter/material.dart';
import 'package:flutter_ui_demo_1/pages/home_page.dart';
import 'package:flutter_ui_demo_1/provider.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_ui_demo_1/widgets/messages_widget.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          displayMedium: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          displaySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade500),
          bodyMedium: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.blue,
          ),
          bodySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade500),
          labelLarge: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          labelMedium: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          labelSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade500,
          ),
        ),
      ),
      home: const MyHomePage(), 
    );
  }
}
