import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTestItem extends StatelessWidget {
  const SelectTestItem(
      {super.key,
      required this.gradientColor1,
      required this.text,
      required this.questionsCount,
      required this.iconPath,
      required this.derection,
      required this.onTap});

  final List<Color> gradientColor1;
  final String text;
  final int questionsCount;
  final String iconPath;
  final int derection;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: gradientColor1)),
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    crossAxisAlignment: derection == 1
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    children: [
                      Text(
                        text,
                        style: MyTextStyles.interExtraBold800.copyWith(
                          fontSize: 24.sp,
                          color: MyColors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Question Count: $questionsCount",
                        style: MyTextStyles.interMedium500.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          derection == 1
              ? Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    iconPath,
                    width: 100.w,
                    height: 100.h,
                  ),
                )
              : Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    iconPath,
                    width: 100.w,
                    height: 100.h,
                  ),
                ),
        ],
      ),
    );
  }
}
