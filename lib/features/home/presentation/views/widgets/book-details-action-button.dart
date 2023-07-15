import 'package:flutter/material.dart';

import 'custom_text_buttom.dart';

class BookDetailsActionButton extends StatelessWidget {
  const BookDetailsActionButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
