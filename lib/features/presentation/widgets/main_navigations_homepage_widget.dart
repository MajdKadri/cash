import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainNavigationsHomePageWidget extends StatelessWidget {
  String title;
  String subtitle;
  VoidCallback ontap;

  MainNavigationsHomePageWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQueryValues.fullWidth(context)/2.2,
        height: MediaQueryValues.fullHeight(context)/4,
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
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20,right: 10),
                    child: Text(title,textAlign: TextAlign.end,)
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        color: Color(0xff00bc8e),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.add),
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
