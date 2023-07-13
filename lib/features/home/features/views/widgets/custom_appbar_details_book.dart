import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';

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
          IconButton(onPressed: (){}, icon: const Icon(Icons.close),),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_outlined),),
        ],
      ),
    );
  }
}
