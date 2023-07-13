import 'package:bookly_app/core/utiles/app_router.dart';
import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'slidinganimatedtext.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetService.logo),
        SizedBox(height: MediaQuery.of(context).size.height/100,),
        SlideAnimatedText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController=AnimationController(vsync: this,duration:const Duration(milliseconds: 1500));
    slidingAnimation=Tween<Offset>(begin:const Offset(0,3) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3),() {
      GoRouter.of(context).push(AppRouter.kHomeView);
    },);
  }

}

