import 'package:flutter/material.dart';
import './circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Row(
      // TODO 3: add alignment
      children: [
        Row(
          children: [
            CircleImage(
              imageProvider: imageProvider,
              imageRadius: 28,
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  authorName,
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                Text(
                  title,
                  style: FooderlichTheme.darkTextTheme.headline3,
                ),
              ],
            ),
          ],
        ),
        // TODO 2: add IconButton
        IconButton(
          onPressed: () {
            const snackBar = SnackBar(
              content: Text('Favorite Pressed'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: const Icon(Icons.favorite_border),
          iconSize: 30,
          color: Colors.grey[400],
        ),
      ],
    );
  }
}
