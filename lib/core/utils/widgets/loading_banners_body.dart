import 'package:flutter/material.dart';

class LoadingBannersBody extends StatelessWidget {
  const LoadingBannersBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(16)),
        height: MediaQuery.of(context).size.height * 0.29,
        width: MediaQuery.of(context).size.width / 2.5,
      ),
    );
  }
}
