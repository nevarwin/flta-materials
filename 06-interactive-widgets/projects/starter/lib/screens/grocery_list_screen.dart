import 'package:flutter/material.dart';
import '../components/grocery_tile.dart';
import '../models/grocery_item.dart';
import '../models/grocery_manager.dart';
import './grocery_item_screen.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;

  const GroceryListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 26: Replace with ListView
    return Container();
  }
}
