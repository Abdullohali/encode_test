import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uzum_clone/const/app_colors.dart';
import 'package:uzum_clone/cubit/cubit/main_cubit.dart';

import '../../widgets/horizontal_listview.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGreyWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Savat",
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
                    "https://cdn5.vectorstock.com/i/1000x1000/02/09/cute-cat-mascot-in-shopping-bag-character-vector-25060209.jpg",
                    height: 200.h,
                    width: 150.w,
                  ),
                  Text(
                    "Savatda hozircha mahsulot yoʻq",
                    style:
                        TextStyle(fontSize: 18.w, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Bosh sahifadagi termalardan boshlang yoki kerakli mahsulotni qidiruv orqali toping",
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
                      BlocProvider.of<MainCubit>(context).onBottomBarChanged(0);
                    },
                    child: const Text(
                      "Bosh sahifaga",
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
