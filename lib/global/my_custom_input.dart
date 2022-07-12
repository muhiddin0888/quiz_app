import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCustomInout extends StatelessWidget {
  const MyCustomInout(
      {super.key,
      required this.textController,
      required this.focusNode,
      required this.hintText,
      required this.keyType,
      required this.isPassword,
      required this.valueChanged});

  final TextEditingController textController;
  final FocusNode focusNode;
  final String hintText;
  final bool isPassword;
  final TextInputType keyType;
  final ValueChanged<String> valueChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyType,
      controller: textController,
      focusNode: focusNode,
      onChanged: (value) {
        valueChanged;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: MyTextStyles.interRegular400.copyWith(
          fontSize: 15,
          color: MyColors.black,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: MyColors.C_E5E5E5),
        ),
      ),
    );
  }
}
