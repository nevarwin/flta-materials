import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Recipe of the Day! 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16.0),
          Container(
            height: 400,
            // TODO: Add ListView Here
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16.0);
              },
              itemCount: recipes.length,
            ),
          )
        ],
      ),
    );
  }
}
