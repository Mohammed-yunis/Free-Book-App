import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/home/features/views/widgets/custom_appbar_details_book.dart';
import 'package:bookly_app/features/home/features/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/features/views/widgets/custom_text_buttom.dart';
import 'package:flutter/material.dart';

import 'custom-list-view-book-details.dart';
import 'custom_rating_book.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return (Column(
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
        SizedBox(
          height: height * 0.047,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Row(
            children: [
              Expanded(
                child: CustomTextButton(
                  height: height * 0.055,
                  text: '19.99€',
                  backGroundColor: Colors.white,
                  textColor: Colors.black,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
              ),
              Expanded(
                child: CustomTextButton(
                  height: height * 0.055,
                  text: 'Free preview',
                  backGroundColor: const Color(0xffEF8262),
                  textColor: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.047,
        ),
        Padding(
          padding:  EdgeInsets.only(left: width * 0.08),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Style.textTheme14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomListViewBookDetails(width: width, height: height),

      ],
    ));
  }
}

