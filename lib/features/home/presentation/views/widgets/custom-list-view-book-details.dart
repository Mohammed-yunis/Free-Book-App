import 'package:bookly_app/core/utils/widgets/text_failure.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_book_cubit/fetch_similar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/similar_book_cubit/fetch_smiliar_cubit.dart';
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
    return BlocBuilder<FetchSimilarCubit, FetchSimilarStates>(
      builder: (context, state) {
        if (state is FetchSimilarSuccess) {
          return SizedBox(
            height: height * 0.16,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: width * 0.022),
                child: CustomListViewItem(
                  aspectRatio: 2.3 / 3.5,
                  items: state.items[index],
                ),
              ),
              itemCount: state.items.length,
            ),
          );
        } else if (state is FetchSimilarFailures) {
          return OnHappenError(errorMessage: state.errorMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
