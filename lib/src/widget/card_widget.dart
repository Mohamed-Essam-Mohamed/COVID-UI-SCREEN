// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:covid_app3/src/utils/app_colors.dart';
import 'package:covid_app3/src/utils/app_text_style.dart';
import 'package:covid_app3/src/widget/line_report_chart.dart';

class CardWidget extends StatelessWidget {
  String title;
  int effectedNum;
  Color iconColor;
  Function press;
  CardWidget(
      {required this.title,
      required this.effectedNum,
      required this.iconColor,
      required this.press});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments;
    return LayoutBuilder(builder: (context, snapshot) {
      return InkWell(
        onTap: () {
          press();
        },
        child: Container(
          width: snapshot.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: iconColor.withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/running.svg',
                      height: 12,
                      width: 12,
                      color: iconColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: AppColors.kTextColor),
                          children: [
                            TextSpan(
                              text: '$effectedNum\n',
                              style: AppTextStyles.textStyle30,
                            ),
                            TextSpan(
                              text: "People",
                              style: AppTextStyles.textStyle12,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: LineReportChart()),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
