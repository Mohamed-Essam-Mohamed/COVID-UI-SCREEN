// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:covid_app3/src/utils/app_colors.dart';
import 'package:covid_app3/src/utils/app_text_style.dart';

class PreventitionCard extends StatelessWidget {
  String svgPath;
  String title;
  PreventitionCard({
    required this.svgPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(svgPath),
        Text(
          title,
          style: AppTextStyles.textStyle12.copyWith(
            color: AppColors.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
