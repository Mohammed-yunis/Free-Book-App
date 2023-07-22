import 'package:bookly_app/core/utils/widgets/loading_best_seller_body.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingBestSeller extends StatelessWidget {
  const LoadingBestSeller({super.key});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const LoadingBestSellerBody();
        },
        scrollDirection:Axis.vertical ,
      ),
    );
  }
}
