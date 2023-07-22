import 'package:bookly_app/core/utils/widgets/loading_banners_body.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const LoadingBannersBody();
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
