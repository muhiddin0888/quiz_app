import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VariantItem extends StatelessWidget {
  const VariantItem(
      {super.key,
      required this.variantText,
      required this.isSelected,
      required this.onTap});

  final String variantText;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 7,
                spreadRadius: 5,
                color: Colors.grey.shade300,
                offset: const Offset(1, 3))
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                variantText,
                style: MyTextStyles.interMedium500.copyWith(
                  fontSize: 16,
                  color: MyColors.black,
                ),
              ),
            ),
            isSelected
                ? SvgPicture.asset(
                    MyIcons.tick,
                    width: 25,
                    height: 25,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
