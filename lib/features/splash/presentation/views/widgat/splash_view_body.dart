import 'package:bookyapp/constantes.dart';
import 'package:bookyapp/core/utils/assets.dart';
import 'package:bookyapp/features/home/presentation/view/home_view.dart';
import 'package:bookyapp/features/splash/presentation/views/widgat/Sliding_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/get_navigation.dart';

class splashViewBody extends StatefulWidget {
  const splashViewBody({super.key});

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlaidingAnimation();
    navigationToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: 4),
        Sliding_Text(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlaidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  void navigationToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        HomeView(),
        transition: Transition.fade,
        duration: kTranstionDuration,
      );
    });
  }
}
