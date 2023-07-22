import 'package:bookly_app/core/utils/widgets/custom_best_seller_loading.dart';
import 'package:bookly_app/core/utils/widgets/text_failure.dart';
import 'package:bookly_app/features/home/presentation/manager/best_seller_book_cubit/fetch_best_seller_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/best_seller_book_cubit/fetch_best_seller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<FetchBestSellerCubit,FetchBestSellerStates>(

      builder:(context, state) {
        if (state is FetchBestSellerSuccess) {
          return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) =>  Padding(
                        padding:  EdgeInsets.symmetric(vertical: height*0.01),
                        child:   BestSellerListViewItem(width: width,items: state.items[index],height: height,)
                    ),
                    itemCount: state.items.length,
                    shrinkWrap: true,
                  );
        } else if(state is FetchBestSellerFailures){
          return OnHappenError(errorMessage: state.errorMessage);
        }
        else{
          return const LoadingBestSeller();
        }
      },
    );
  }
}
