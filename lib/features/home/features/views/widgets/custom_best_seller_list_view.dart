import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) =>  Padding(
          padding:  EdgeInsets.symmetric(vertical: height*0.01),
          child:   BestSellerListViewItem(width: width)
      ),
      itemCount: 20,
      shrinkWrap: true,
    );
  }
}
