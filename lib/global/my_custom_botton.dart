import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {super.key, required this.buttoText, required this.onTap});
  final String buttoText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 300.w,
        decoration: BoxDecoration(
          color: MyColors.C_FCA82F,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            buttoText,
            style: MyTextStyles.interMedium500
                .copyWith(fontSize: 20, color: MyColors.white),
          ),
        ),
      ),
    );
  }
}
