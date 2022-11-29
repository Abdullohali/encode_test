import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uzum_clone/widgets/tab_view_one.dart';

import '../../const/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  floating: true,
                  pinned: true,
                  snap: true,
                  backgroundColor: AppColors.kWhite,
                  toolbarHeight: 310.h,
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 10.h),
                      Theme(
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
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 210,
                        child: CustomScrollView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          slivers: <Widget>[
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (_, int index) {
                                  return InkWell(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      width: 380.w,
                                      height: 200.h,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/encode.png"),
                                              fit: BoxFit.cover),
                                          color: AppColors.kPurple,
                                          borderRadius:
                                              BorderRadius.circular(12.r)),
                                    ),
                                  );
                                },
                                childCount: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorWeight: 2.h,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: AppColors.kPurple,
                    labelPadding: EdgeInsets.symmetric(horizontal: 45.w),
                    tabs: [
                      Tab(
                        child: Text(
                          "Mashhur",
                          style: TextStyle(
                              fontSize: 17.w,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kBlack),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Yangi",
                          style: TextStyle(
                              fontSize: 17.w,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kBlack),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Sotish",
                          style: TextStyle(
                              fontSize: 17.w,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kBlack),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                TabView1(),
                TabView1(),
                TabView1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
