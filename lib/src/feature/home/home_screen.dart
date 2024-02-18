// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:covid_app3/src/feature/home/details_screen.dart';
import 'package:covid_app3/src/utils/app_colors.dart';
import 'package:covid_app3/src/utils/app_text_style.dart';
import 'package:covid_app3/src/widget/card_widget.dart';
import 'package:covid_app3/src/widget/help_card.dart';
import 'package:covid_app3/src/widget/preventition_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor.withOpacity(0.03),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CardWidget(
                    effectedNum: 1062,
                    iconColor: Color(0xFFFF8C00),
                    title: 'Confirmed Cases',
                    press: () {},
                  ),
                  CardWidget(
                    effectedNum: 100,
                    iconColor: Color(0xFFFF2D55),
                    title: 'Total Deaths',
                    press: () {},
                  ),
                  CardWidget(
                    effectedNum: 834,
                    iconColor: Color(0xFFFFE3C2),
                    title: 'Total Recovered',
                    press: () {},
                  ),
                  CardWidget(
                    effectedNum: 20,
                    iconColor: Color(0xFF5856D6),
                    title: 'New Cases',
                    press: () {
                      Navigator.of(context).pushNamed(DetailsScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ////

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Preventions",
                    style: AppTextStyles.textStyle30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PreventitionCard(
                        svgPath: "assets/icons/hand_wash.svg",
                        title: "wash Hands",
                      ),
                      PreventitionCard(
                        svgPath: "assets/icons/use_mask.svg",
                        title: "Use Masks",
                      ),
                      PreventitionCard(
                        svgPath: "assets/icons/Clean_Disinfect.svg",
                        title: "Clean Disinfect",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  HelpCard(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
