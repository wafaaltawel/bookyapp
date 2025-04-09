import 'package:bookyapp/core/utils/styles.dart';
import 'package:bookyapp/features/home/presentation/view/widgets/custom_app_body.dart';
import 'package:bookyapp/features/home/presentation/view/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturerBooksListView(),
          SizedBox(height: 50),
          Text("Best Seller", style: Styles.titleMedim),
        ],
      ),
    );
  }
}
