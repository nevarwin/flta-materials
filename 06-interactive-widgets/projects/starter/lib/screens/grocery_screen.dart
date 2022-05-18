import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'empty_grocery_screen.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 4: Add a scaffold widget
    return const EmptyGroceryScreen();
  }

  // TODO: Add buildGroceryScreen
  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(
      builder: (context, manager, child) {
        if (manager.groceryItem.isNotEmpty) {
          // TODO 25: Add GroceryListScreen
          return Container();
        } else {
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
