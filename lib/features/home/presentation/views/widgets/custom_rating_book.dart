import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: width*0.04,
        ),
        SizedBox(width: width*0.03,),
        Text(
          '4.8',
          style: Style.textTheme16.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(width: width*0.03,),
        Text(
          '(2390)',
          style: Style.textTheme14.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xff707070)
          ),
        ),
      ],
    );
  }
}
