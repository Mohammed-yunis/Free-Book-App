import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({Key? key, required this.width, required this.height}) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
