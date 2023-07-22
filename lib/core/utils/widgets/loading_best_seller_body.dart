import 'package:flutter/material.dart';

class LoadingBestSellerBody extends StatelessWidget {
  const LoadingBestSellerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.02),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(16)),
            width: width * 0.2,
            height: height * 0.13,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: height * 0.013,
                  ),
                  SizedBox(
                    height: height * 0.013,
                  ),
                  Container(
                    color: Colors.red,
                    width: width * 0.4,
                    height: height * 0.013,
                  ),
                  SizedBox(
                    height: height * 0.013,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.grey,
                        height: height * 0.013,
                        width: width * 0.25,
                      ),
                      const Spacer(),
                      Container(
                        color: Colors.grey,
                        height: height * 0.013,
                        width: width * 0.13,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
