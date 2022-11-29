import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const/app_colors.dart';

class SeachPage extends StatelessWidget {
  const SeachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        title: Theme(
          data: Theme.of(context).copyWith(
            splashColor: AppColors.kGreyWhite,
          ),
          child: SizedBox(
            height: 40.h,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.zero,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.kGreyWhite,
                  size: 20,
                ),
                hintText: "Mahsulot va toifalarni qidirish",
                hintStyle: TextStyle(
                    color: AppColors.kGreyWhite,
                    fontSize: 17.w,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.kBlack, width: 0.1.w)),
            height: 45.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/dress.svg',
                      width: 25.w,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      "Kiyim",
                      style: TextStyle(
                          fontSize: 14.w, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Icon(
                  Icons.expand_more,
                  size: 25.w,
                  color: AppColors.kBlackGrey,
                )
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
