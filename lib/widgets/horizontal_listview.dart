import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart';

Card horizontallistviews({String? typeText}) {
  return Card(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Text(
          typeText!,
          style: TextStyle(fontSize: 16.w, fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(
        height: 310.h,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            primary: false,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 190.h,
                        width: 120.w,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://images.uzum.uz/ce29kkgv1htd23aigplg/original.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 100.w,
                        margin:
                            EdgeInsets.only(left: 10.w, bottom: 5.h, top: 4.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Televizor Xiaomi Mi",
                              style: TextStyle(
                                  fontSize: 12.w, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 340 000 so'm",
                              style: TextStyle(
                                  fontSize: 12.w,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.kGrey,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              "5 073 000 so'm",
                              style: TextStyle(
                                fontSize: 12.w,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })),
      )
    ]),
  );
}
