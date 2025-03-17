import 'package:bookyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class splashViewBody extends StatelessWidget {
  const splashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: 4),
        Text("Read Free Books", textAlign: TextAlign.center),
      ],
    );
  }
}
