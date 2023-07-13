import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'custom_best_seller_list_view.dart';
import 'custom_book_banners__list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    double  height =MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.only(left: width/15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(height: height, width: width),
                CustomBookBannersListView(height: height,width:width),
                SizedBox(height: height/17,),
                const Text('Best Seller',style: Style.textTheme18,),

              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CustomBestSellerListView(height: height, width: width),
          ),
        ],
      ),
    );
  }
}





