import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uzum_clone/const/app_colors.dart';

import '../../cubit/cubit/main_cubit.dart';
import '../../widgets/horizontal_listview.dart';

class DesirePage extends StatelessWidget {
  const DesirePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGreyWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Istaklarim",
          style: TextStyle(
              color: AppColors.kBlack,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              width: double.infinity,
              height: 400.h,
              color: AppColors.kWhite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    "https://uzum.uz/static/img/hearts.cf414be.png",
                    height: 200.h,
                    width: 150.w,
                  ),
                  Text(
                    "Sizga yoqqanini qoʻshing",
                    style:
                        TextStyle(fontSize: 18.w, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Mahsulotdagi ♡ belgisini bosing. Akkauntga kiring va barcha saralanganlar saqlanib qoladi",
                    style: TextStyle(
                      fontSize: 15.w,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.kPurple),
                    onPressed: () {
                      BlocProvider.of<MainCubit>(context).onBottomBarChanged(4);

                    },
                    child: const Text(
                      "Akkountga Kirish",
                      style: TextStyle(color: AppColors.kWhite),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            horizontallistviews(typeText: "Ommabop mahsulotlar"),
            horizontallistviews(typeText: "Yaqinda Ko'rganingiz"),
          ],
        ),
      ),
    );
  }
}
