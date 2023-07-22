import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:flutter/material.dart';
import 'custom_list_view_item.dart';
import 'custom_rating_book.dart';

class BookDetailsBodySection1 extends StatelessWidget {
  const BookDetailsBodySection1({
    super.key,
    required this.height,
    required this.width, required this.items,
  });

  final double height;
  final double width;
  final Items items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child:  CustomListViewItem(aspectRatio: 4 / 5.9,onTap: (){},items: items,),
        ),
        SizedBox(
          height: height*0.04,
        ),
         Text(
          items.volumeInfo!.title!,
          style: Style.textTheme30,
           textAlign: TextAlign.center,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Opacity(
            opacity: 0.6,
            child: Text(
              items.volumeInfo!.authors![0],
              style: Style.textTheme18.copyWith(
                fontWeight: FontWeight.w500,
              ),
            )),
        SizedBox(
          height: height * 0.022,
        ),
        CustomRatingBook(width: width,rate: items.volumeInfo?.averageRating??0,count: items.volumeInfo?.ratingsCount??0),
      ],
    );
  }
}
