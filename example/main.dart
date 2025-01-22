
import 'package:flutter/material.dart';
import 'package:thai_to_eng_keyboard/thai_to_eng_keyboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// contain converted text
  String convertedText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Thai to English Converter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  setState(() {
                    convertedText = convertThaiToEnglish(text);
                  });
                },
                decoration: InputDecoration(
                  hintText: 'กรอกข้อความภาษาไทย',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Text(
                convertedText,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}