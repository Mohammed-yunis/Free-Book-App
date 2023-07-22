import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({
    super.key,
    required this.width, required this.rate, required this.count,
  });

  final double width;
  final num rate;
  final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: width*0.038,
        ),
        SizedBox(width: width*0.03,),
        Text(
          rate.toString(),
          style: Style.textTheme16.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(width: width*0.03,),
        Text(
          '($count)',
          style: Style.textTheme12.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xff707070)
          ),
        ),
      ],
    );
  }
}
