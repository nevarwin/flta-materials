import 'package:flutter/material.dart';

import '../models/models.dart';
import 'recipe_thumbnail.dart';

class RecipeGridView extends StatelessWidget {
  final List<SimpleRecipe> recipe;
  const RecipeGridView({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        itemCount: recipe.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 1000.0,
        ),
        itemBuilder: (context, index) {
          final simpleRecipe = recipe[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}
