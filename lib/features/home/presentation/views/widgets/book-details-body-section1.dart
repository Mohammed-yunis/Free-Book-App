import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_appbar_details_book.dart';
import 'custom_list_view_item.dart';
import 'custom_rating_book.dart';

class BookDetailsBodySection1 extends StatelessWidget {
  const BookDetailsBodySection1({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarBookDetails(height: height, width: width),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child:  CustomListViewItem(aspectRatio: 4 / 5.9,onTap: (){}),
        ),
        SizedBox(
          height: height*0.04,
        ),
        const Text(
          'The Jungle Book',
          style: Style.textTheme30,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Opacity(
            opacity: 0.6,
            child: Text(
              'Rudyard Kipling',
              style: Style.textTheme18.copyWith(
                fontWeight: FontWeight.w500,
              ),
            )),
        SizedBox(
          height: height * 0.022,
        ),
        CustomRatingBook(width: width),
      ],
    );
  }
}
