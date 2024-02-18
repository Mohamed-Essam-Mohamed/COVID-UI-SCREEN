// ignore_for_file: prefer_const_constructors

import 'package:covid_app3/src/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BuildInfoText extends StatelessWidget {
  String percentage;
  String title;
  BuildInfoText({required this.title, required this.percentage});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$percentage% \n",
            style: TextStyle(
              fontSize: 20,
              color: AppColors.kPrimaryColor,
            ),
          ),
          TextSpan(
            text: title,
            style: TextStyle(
              color: AppColors.kTextMediumColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
