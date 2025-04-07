import 'package:flutter/material.dart';
import 'package:yes_or_not_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes Or Not App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).theme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar')
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text('Click me'),
          )
        ),
      ),
    );
  }
}
