
import 'package:bookyapp/features/home/presentation/view/widgets/custom_list_view_itum.dart';
import 'package:flutter/material.dart';

class FeaturerBooksListView extends StatelessWidget {
  const FeaturerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
