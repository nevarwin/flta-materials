import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';
import 'screens/explore_screen.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
