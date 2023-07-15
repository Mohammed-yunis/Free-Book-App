import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class CustomListViewBookDetails extends StatelessWidget {
  const CustomListViewBookDetails({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height*0.16,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  Padding(
          padding:  EdgeInsets.only(right: width*0.022),
          child:  const CustomListViewItem(aspectRatio: 2.3/3.5,),
        ),
        itemCount: 20,
      ),
    );
  }
}
