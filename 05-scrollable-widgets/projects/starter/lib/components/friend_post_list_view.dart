import 'dart:ui';

import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;
  const FriendPostListView({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs 👩‍🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16),
          // TODO: Add PostListView here
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
