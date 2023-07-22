import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/manager/best_seller_book_cubit/fetch_best_seller_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/choice_books_cubit/choice_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/choice_books_cubit/choice_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/functions_used/drop_down_menu_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: height/20,bottom:height/25,right:width/15 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetService.logo,width:width/4,),
        BlocBuilder<ChoiceBooksCubit,ChoiceBooksStates>(
          builder:(context, state) =>  DropdownButton(
              dropdownColor: kPrimerColor.withGreen(20).withOpacity(0.98),
              value: BlocProvider.of<FetchBestSellerCubit>(context).query,
              items: modelItemList(context),
              onChanged: (value){
                BlocProvider.of<ChoiceBooksCubit>(context).choiceBook(context,  value);
              }),
        ),
          IconButton(
            onPressed: (){
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: Image.asset(AssetService.search),
          ),
        ],
      ),
    );
  }
}
