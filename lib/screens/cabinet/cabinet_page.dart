import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzum_clone/const/app_colors.dart';

class CabinetPage extends StatelessWidget {
  const CabinetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGreyWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250.h,
                color: AppColors.kGreyWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Shahsiy Kabinet",
                      style: TextStyle(
                          fontSize: 20.w, fontWeight: FontWeight.w500),
                    ),
                    Image.asset(
                      'assets/encode2.png',
                      height: 100.h,
                      width: 150.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "Savat va akkauntingizdagi istaklarni ro'yhatini ochish uchun tizimga kiring",
                        style: TextStyle(
                            fontSize: 16.w, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              kabinetListtile(
                  isSvg: false, title: "Ilova tili", titleTr: "O'zbekcha"),
              SizedBox(height: 10.h),
              kabinetListtile(
                  title: "Shahar",
                  svgname: "assets/icons/location.svg",
                  titleTr: "Toshkent"),
              kabinetListtile(
                  title: "Xaritadagi topshiriq punktlari",
                  svgname: "assets/icons/map.svg",
                  titleTr: ""),
              SizedBox(height: 10.h),
              kabinetListtile(
                  title: "Bildirishnomalar",
                  svgname: "assets/icons/notification.svg",
                  titleTr: ""),
              SizedBox(height: 10.h),
              kabinetListtile(
                  title: "Ma'lumot",
                  svgname: "assets/icons/info.svg",
                  titleTr: ""),
              kabinetListtile(
                  title: "Biz bilan bog'lanish",
                  svgname: "assets/icons/messages.svg",
                  titleTr: ""),
              SizedBox(height: 20.h),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.kPurple,
                      minimumSize: Size(380.w, 60.h)),
                  onPressed: () {},
                  child: Text(
                    "Kirish",
                    style: TextStyle(color: AppColors.kWhite, fontSize: 15.w),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ro'yhatdan o'tish",
                    style: TextStyle(color: AppColors.kPurple, fontSize: 15.w),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  ListTile kabinetListtile(
      {bool isSvg = true, String? title, String? titleTr, String? svgname}) {
    return ListTile(
      tileColor: AppColors.kWhite,
      leading: isSvg
          ? SvgPicture.asset(
              svgname!,
              height: 25.h,
              width: 25.w,
            )
          : CircleAvatar(
              radius: 15.r,
              backgroundImage: const NetworkImage(
                "https://img.freepik.com/premium-vector/uzbekistan-3d-rounded-flag-button_97173-159.jpg?w=2000",
              ),
            ),
      title: Text(
        title!,
        style: TextStyle(fontSize: 14.w),
      ),
      trailing: Wrap(
        children: [
          Text(
            titleTr!,
            style: TextStyle(color: AppColors.kGreyWhite, fontSize: 14.w),
          ),
          SizedBox(width: 10.w),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.kGreyWhite,
            size: 18,
          )
        ],
      ),
    );
  }
}
