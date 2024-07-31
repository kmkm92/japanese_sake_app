import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/ui/widgets/bottom_navigation.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sake App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigation(
        currentIndex: 0,
        onTap: (index) {
          print('tapped: $index');
        },
      ),
    );
  }
}
