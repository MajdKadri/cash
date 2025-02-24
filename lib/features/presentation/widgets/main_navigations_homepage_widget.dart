import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNavigationsHomePageWidget extends StatelessWidget {
  String title;
  String subtitle;
  String image;
  VoidCallback ontap;
  Color? onlongtapColor;

  MainNavigationsHomePageWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.ontap,
      this.onlongtapColor});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onLongPress: (){
        print(onlongtapColor);
        onlongtapColor = Colors.red;
      },
      child: Container(
        height: 190.h,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 300.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: onlongtapColor == null
                        ? Colors.grey[200]
                        : onlongtapColor,
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(top: 60.h, left: 10.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                style: TextStyle(
                                  fontSize: 20.h,
                                ),
                                title,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 80.w,
                                child: Text(
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 15.h,
                                  ),
                                  subtitle,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    width: 85.w,
                    height: 85.h,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(image),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
