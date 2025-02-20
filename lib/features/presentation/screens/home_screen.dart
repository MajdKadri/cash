import 'package:cash_mobile_v1/core/utils/colors.dart';
import 'package:cash_mobile_v1/core/utils/home_page_card_list.dart';
import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:cash_mobile_v1/features/presentation/widgets/home_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/main_navigations_homepage_widget.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQueryValues.fullWidth(context));
    print(MediaQueryValues.fullHeight(context));

    return Scaffold(
      //backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "test"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "test")
      ]),
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.elliptical(
                                  MediaQueryValues.fullWidth(context), 80)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                CustomColors.StartGradientColor,
                                CustomColors.EndGradientColor
                              ])),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.vertical(
                          bottom: Radius.elliptical(
                              MediaQueryValues.fullWidth(context), 80)),
                      child: SvgPicture.asset(
                        fit: BoxFit.fill,
                        "assets/home_background.svg",
                        height: MediaQueryValues.fullWidth(context),
                      ),
                    ),
                    HomeScreenHeader()
                  ],
                ),
              ),
              MainNavigationsHomePageWidget(
                title: HomeCardItem.HomeCard[0].title,
              subtitle:  HomeCardItem.HomeCard[0].subtitle,
              ontap: (){},),

            ],
          )),
    );
  }
}


