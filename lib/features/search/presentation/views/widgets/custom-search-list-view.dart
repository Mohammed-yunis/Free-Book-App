import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/widgets/custom_best_seller_loading.dart';
import '../../../../../core/utils/widgets/text_failure.dart';
import '../../manager/search_book_cubit/fetch_search_cubit.dart';
import '../../manager/search_book_cubit/fetch_searsh_state.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({Key? key, required this.width, required this.height, }) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchedCubit, FetchSearchedStates>(
      builder:(context, state) {
        if (state is FetchSearchedSuccess) {
         return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) =>  Padding(
                        padding:  EdgeInsets.symmetric(vertical: height*0.01),
                        child:  BestSellerListViewItem(width: width,items:state.items[index] ,height: height,)
                    ),
                    itemCount: state.items.length,
                    shrinkWrap: true,
                  );
        } else if (state is FetchSearchedFailures) {
          if (state.errorMessage=="Missing query.") {
            return SingleChildScrollView(
              child: Column(
                children: const [LoadingBestSeller()],
              ),
            );
          } else {
            return OnHappenError(errorMessage: state.errorMessage);
          }
        } else {
          return SingleChildScrollView(
            child: Column(
              children: const [LoadingBestSeller()],
            ),
          );
        }
      },
    );

  }
}
