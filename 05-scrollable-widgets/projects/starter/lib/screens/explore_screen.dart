import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(
      () {
        if (_scrollController.position.atEdge) {
          final isTop = _scrollController.position.pixels == 0;
          isTop ? print('Top') : print('Bottom');
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO 1: Add TodayRecipeListView FutureBuilder
    return Scaffold(
      body: FutureBuilder(
        future: mockService.getExploreData(),
        builder: ((context, AsyncSnapshot<ExploreData> snapshot) {
          // TODO: Add Nested List Views
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
                const SizedBox(height: 16),

                // TODO: Replace this with FriendPostListView
                FriendPostListView(
                    friendPosts: snapshot.data?.friendPosts ?? []),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
