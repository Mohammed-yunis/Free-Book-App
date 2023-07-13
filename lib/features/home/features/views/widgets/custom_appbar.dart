import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: height/20,bottom:height/25,right:width/15 ),
      child: Row(
        children: [
          Image.asset(AssetService.logo,width:width/4,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Image.asset(AssetService.search),)
        ],
      ),
    );
  }
}
