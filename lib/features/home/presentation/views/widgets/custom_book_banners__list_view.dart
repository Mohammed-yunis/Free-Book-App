import 'package:bookly_app/core/utils/widgets/custom_banners_loading.dart';
import 'package:bookly_app/core/utils/widgets/text_failure.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/fetch_featured_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/fetch_featured_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<FetchFeaturedCubit, FetchFeaturedStates>(
      builder: (context, state) {
        if (state is FetchFeaturedSuccess) {
          return SizedBox(
            height: height * 0.30,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: width * 0.05),
                child:  CustomListViewItem(
                    aspectRatio: 2.3 / 3.5,
                    items: state.items[index],),
              ),
              itemCount: state.items.length,
            ),
          );
        } else if (state is FetchFeaturedFailures) {
          return OnHappenError(errorMessage: state.errorMessage);
        } else {
          return  SizedBox(height: height * 0.30,child: const Loading());
        }
      },
    );
  }
}
