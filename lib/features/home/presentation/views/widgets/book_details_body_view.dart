import 'package:flutter/material.dart';
import '../../../data/models/Items.dart';
import 'book-details-action-button.dart';
import 'book-details-body-section1.dart';
import 'book-details-body-section2.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key, required this.items}) : super(key: key);
  final Items items;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: (
          Column(
        children: [
          BookDetailsBodySection1(height: height, width: width,items: items,),
          SizedBox(
            height: height * 0.047,
          ),
          BookDetailsActionButton(width: width, height: height,items: items,),
          SizedBox(
            height: height * 0.047,
          ),
          BookDetailsBodySection2(height: height, width: width),

        ],
      )),
    );
  }
}




