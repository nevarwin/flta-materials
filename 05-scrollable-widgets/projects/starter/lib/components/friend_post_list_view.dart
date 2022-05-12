import 'dart:ui';

import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class FriendPostListView extends StatelessWidget {
  const FriendPostListView({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  final List<Post> friendPosts;

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
          ListView.separated(
              primary: false,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final post = friendPosts[index];
                return FriendPostTile(post: post);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: friendPosts.length),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
