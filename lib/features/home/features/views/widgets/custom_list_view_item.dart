import 'package:bookly_app/core/utiles/app_router.dart';
import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key, required this.aspectRatio, this.onTap,
  });
  final double aspectRatio;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap?? () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration:   BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetService.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
