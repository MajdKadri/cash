import 'package:auto_size_text/auto_size_text.dart';
import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:cash_mobile_v1/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SpacingHeight.spacingByHeight20(context)),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 130.h,
              width: MediaQueryValues.fullWidth(context) / 1.2,
              decoration: BoxDecoration(
                  color: Color.fromARGB(102, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: SpacingWidth.spacingByWidth5(context),
                            top: SpacingHeight.spacingByHeight15(context)),
                        child: SvgPicture.asset(
                            height: 40.h,
                            "assets/mtn_white_logo.svg"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                255, 255, 255, 0.8156862745098039),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        width: 50.w,
                        height: 50.h,
                        child: Icon(
                          Icons.add,
                          size: 37.h,
                        ),
                      )
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(
top:10.h,
                        left: SpacingWidth.spacingByWidth5(context)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                          AppStrings.Balance,

                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.h
                          ),
                        ),
                       Text(
                          "35000.00 SYP",

                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                          fontSize: 15.h


                          ),
                        ),
                        Text(
                          "0000 1111 2222 3333",
                          style: TextStyle(
                            fontSize: 13.h,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),


                  //
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('recents');
              },
              child: Container(
                height: 30.h,
                width: MediaQueryValues.fullWidth(context) / 1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      minFontSize: 10,
                      maxFontSize: 16,
                      'Recent Transactions',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.8156862745098039),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
