import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            // TODO 5: add dark overlay BoxDecoration
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
            // TODO 6: Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            // TODO 7: Add Center widget with Chip widget children
            Center(
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    Chip(
                      onDeleted: () {
                        print('delete');
                      },
                      backgroundColor: Colors.black.withOpacity(0.7),
                      label: Text(
                        'Healthy',
                        style: FooderlichTheme.lightTextTheme.bodyText1,
                      ),
                    ),
                    Chip(
                      onDeleted: () {
                        print('delete');
                      },
                      backgroundColor: Colors.black.withOpacity(0.7),
                      label: Text(
                        'Vegan',
                        style: FooderlichTheme.lightTextTheme.bodyText1,
                      ),
                    ),
                    Chip(
                      backgroundColor: Colors.black.withOpacity(0.7),
                      label: Text(
                        'Carrots',
                        style: FooderlichTheme.lightTextTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
