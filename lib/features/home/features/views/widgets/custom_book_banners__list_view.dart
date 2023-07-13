import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class CustomBookBannersListView extends StatelessWidget {
  const CustomBookBannersListView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height*0.30,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  Padding(
          padding:  EdgeInsets.only(right: width*0.05),
          child:  const CustomListViewItem(aspectRatio: 2.3/3.5,),
        ),
        itemCount: 20,
      ),
    );
  }
}
