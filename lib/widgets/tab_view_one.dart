import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart';

class TabView1 extends StatefulWidget {
  const TabView1({super.key});

  @override
  State<TabView1> createState() => _TabView1State();
}

class _TabView1State extends State<TabView1> {
  Color likeColor = AppColors.kWhite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    mainAxisExtent: 400,
                    childAspectRatio: 0.6),
                itemBuilder: (_, __) {
                  return InkWell(
                    child: Container(
                      height: 500.h,
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 280.h,
                            width: 250.w,
                            alignment: Alignment.topRight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://images.uzum.uz/ce29kkgv1htd23aigplg/original.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: IconButton(
                                onPressed: () async {
                                  likeColor == AppColors.kWhite
                                      ? Colors.red
                                      : AppColors.kWhite;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: likeColor,
                                )),
                          ),
                          Container(
                            height: 150.h,
                            margin: EdgeInsets.only(left: 10.w, bottom: 5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Televizor Xiaomi Mi TV P1 43 UHD Smart TV L43M6-6ARG",
                                  style: TextStyle(
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "5.0 ( 2 baho ) Koʻproq 30 buyurtma",
                                  style: TextStyle(
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.kGrey),
                                ),
                                Text(
                                  "5 340 000 so'm",
                                  style: TextStyle(
                                      fontSize: 14.w,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.kGrey,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Text(
                                  "5 073 000 so'm",
                                  style: TextStyle(
                                    fontSize: 17.w,
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
                })
          ],
        ),
      ),
    );
  }
}
