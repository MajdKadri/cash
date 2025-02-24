import 'package:cash_mobile_v1/core/utils/colors.dart';
import 'package:cash_mobile_v1/core/utils/home_page_card_list.dart';
import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:cash_mobile_v1/features/presentation/widgets/home_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main_navigations_homepage_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            // Container(
            //   height: 500.h,
            //   child: AlignedGridView.count(
            //     itemCount: 1,
            //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //       maxCrossAxisExtent:1,
            //     ),
            //     itemBuilder: (context, index) =>
            //         MainNavigationsHomePageWidget(
            //           title: HomeCardItem.HomeCard[index].title,
            //           subtitle: HomeCardItem.HomeCard[index].subtitle,
            //           ontap: () {},
            //         ),
            //   ),
            // ),
            Padding(padding: EdgeInsets.only(top: 30.w)),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // SizedBox(
                    //     width: 150.w,
                    //     child: MainNavigationsHomePageWidget(
                    //       image:HomeCardItem.HomeCard[1].image ,
                    //         title: "title", subtitle: "subtitle", ontap: () {})),
                    AlignedGridView.count(
                        crossAxisCount: 2,
                        padding:
                        EdgeInsets.only(top: 10.w, left: 10.w, right: 10.w),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return MainNavigationsHomePageWidget(
                              image: HomeCardItem.HomeCard[index].image,
                              title: HomeCardItem.HomeCard[index].title,
                              subtitle: HomeCardItem.HomeCard[index].subtitle,
                              ontap: () {});
                        }),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
