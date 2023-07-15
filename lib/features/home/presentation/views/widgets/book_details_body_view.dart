import 'package:flutter/material.dart';
import 'book-details-action-button.dart';
import 'book-details-body-section1.dart';
import 'book-details-body-section2.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: (
          Column(
        children: [
          BookDetailsBodySection1(height: height, width: width),
          SizedBox(
            height: height * 0.047,
          ),
          BookDetailsActionButton(width: width, height: height),
          SizedBox(
            height: height * 0.047,
          ),
          BookDetailsBodySection2(height: height, width: width),

        ],
      )),
    );
  }
}




