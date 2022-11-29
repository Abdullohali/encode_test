import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../const/app_colors.dart';

class AppBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onPressed;

  const AppBottomNavBar({
    Key? key,
    required this.onPressed,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  @override
  void initState() {
    super.initState();
    // Hive.box('parentImage').clear(); Bazi Hivelarini clear qilish uchun joy chiqib ketganda tozalanadiganlarni
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _setItem('assets/icons/grape.svg', 'Bosh sahifa', 0),
          _setItem('assets/icons/search.svg', 'Qidiruv', 1),
          _setItem('assets/icons/basket.svg', 'Savat', 2),
          _setItem('assets/icons/like.svg', 'Istaklar', 3),
          _setItem('assets/icons/user.svg', 'Kabinet', 4),
        ],
      ),
    );
  }

  _setItem(String assetIcon, String label, int index) => Expanded(
        flex: 1,
        child: InkWell(
          onTap: () {
            widget.onPressed.call(index);
          },
          child: Column(
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 24.h,
                  width: 6.w,
                ),
              ),
              SizedBox(height: 6.h),
              SvgPicture.asset(assetIcon,
                  height: 20.h,
                  width: 20.w,
                  color: index == widget.currentIndex
                      ? AppColors.kPurple
                      : AppColors.kBlack),
              SizedBox(height: 7.h),
              Text(label,
                  style: TextStyle(
                      color: index == widget.currentIndex
                          ? AppColors.kPurple
                          : AppColors.kBlack,
                      fontSize: 14.w,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      );
}
