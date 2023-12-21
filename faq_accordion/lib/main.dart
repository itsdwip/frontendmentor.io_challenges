import 'package:faqaccordion/faq_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'WorkSans',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(248, 239, 255, 1),
          background: const Color.fromRGBO(248, 239, 255, 1),
        ),
        useMaterial3: true,
      ),
      home: const FaqPage(),
    );
  }
}
