import 'package:flutter/material.dart';
import 'package:language_code/language_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Raw Locale: ${LanguageCode.rawLocale}'),
              Text('Code: ${LanguageCode.code}'),
              Text('Locale: ${LanguageCode.locale}'),
            ],
          ),
        ),
      ),
    );
  }
}
