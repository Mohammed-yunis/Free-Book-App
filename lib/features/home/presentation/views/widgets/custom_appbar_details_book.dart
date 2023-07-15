import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: height/20,bottom:height/70,right:width/15 ),
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              GoRouter.of(context).go(AppRouter.kHomeView);
            },
            icon: const Icon(Icons.close),
          ),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_outlined),),
        ],
      ),
    );
  }
}
