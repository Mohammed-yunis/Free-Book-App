import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../data/models/Items.dart';
import 'custom_rating_book.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.width,
    required this.height,
    required this.items,
  });

  final double width;
  final double height;
  final Items items;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: items);
      },
      child: Row(
        children: [
          SizedBox(
            height: 130,
            child: CustomListViewItem(
                aspectRatio: 2.5 / 3.6,
                items: items),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items.volumeInfo!.title.toString(),
                    style: Style.textTheme20.copyWith(fontFamily: kSpectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: height*0.01,),
                  Text(
                    items.volumeInfo!.authors![0],
                    style:
                        Style.textTheme12.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: height*0.01,),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textTheme16.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      CustomRatingBook(
                        width: width,
                        rate: items.volumeInfo!.averageRating??0,
                        count: items.volumeInfo!.ratingsCount??0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
