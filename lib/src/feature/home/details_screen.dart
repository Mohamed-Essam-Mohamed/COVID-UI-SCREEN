// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:covid_app3/src/utils/app_colors.dart';
import 'package:covid_app3/src/widget/build_info_text.dart';
import 'package:covid_app3/src/widget/weekly_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = "DetailsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.kPrimaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor.withOpacity(0.03),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 21),
                blurRadius: 53,
                color: Colors.black.withOpacity(0.05),
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    "New Cases",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "assets/icons/more.svg",
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "547",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 100,
                        color: AppColors.kPrimaryColor,
                        height: 1.2),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "5.9% ",
                    style:
                        TextStyle(color: AppColors.kPrimaryColor, fontSize: 16),
                  ),
                  SvgPicture.asset("assets/icons/increase.svg")
                ],
              ),
              Text(
                "From Health Center",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              WeeklyChart(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildInfoText(title: "From Last Week", percentage: "6.95"),
                  BuildInfoText(title: "Recovery Rate", percentage: "10.37"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 21),
                      blurRadius: 54,
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Global Map",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/more.svg")
                      ],
                    ),
                    SizedBox(height: 10),
                    SvgPicture.asset("assets/icons/map.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
