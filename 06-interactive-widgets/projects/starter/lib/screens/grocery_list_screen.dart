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
    final groceryItem = manager.groceryItem;
    // TODO 26: Replace with ListView
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: groceryItem.length,
        itemBuilder: (context, index) {
          final item = groceryItem[index];
          // TODO 28: Wrap in a Dismissable
          // TODO 27: Wrap in an InkWell
          return GroceryTile(
            key: Key(item.id),
            item: item,
            onComplete: (change) {
              if (change != null) {
                manager.completeItem(index, change);
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0);
        },
      ),
    );
  }
}
