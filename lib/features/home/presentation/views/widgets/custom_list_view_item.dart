import 'package:bookly_app/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/Items.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.aspectRatio,
    this.onTap,
    required this.items,
  });

  final double aspectRatio;
  final GestureTapCallback? onTap;
  final Items items;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: items);
          },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
            aspectRatio: aspectRatio,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: items.volumeInfo!.imageLinks?.thumbnail??'',
              errorWidget:(context, url, error) => const Icon(Icons.error_outlined),
            )),
      ),
    );
  }
}
