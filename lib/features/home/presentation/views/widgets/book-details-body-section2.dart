import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom-list-view-book-details.dart';

class BookDetailsBodySection2 extends StatelessWidget {
  const BookDetailsBodySection2({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: width * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: Style.textTheme14.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          CustomListViewBookDetails(width: width, height: height),
        ],
      ),
    );
  }
}
