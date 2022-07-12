import 'package:exoansion_tile/global/my_custom_botton.dart';
import 'package:exoansion_tile/global/my_custom_input.dart';
import 'package:exoansion_tile/screens/quiz_home_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key});

  @override
  State<RegisterationScreen> createState() => _RegisterationScreen();
}

class _RegisterationScreen extends State<RegisterationScreen> {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  @override
  void dispose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Register",
          style: MyTextStyles.interRegular400
              .copyWith(fontSize: 24.sp, color: MyColors.black),
        ),
        elevation: 0,
        backgroundColor: MyColors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: Container(
        decoration: const BoxDecoration(color: MyColors.white),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Image.asset(MyIcons.logo),
            SizedBox(
              height: 50.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                children: [
                  MyCustomInout(
                      valueChanged: (value) {},
                      isPassword: false,
                      textController: textController1,
                      focusNode: focusNode1,
                      hintText: "Enter your mobile number",
                      keyType: TextInputType.phone),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyCustomInout(
                      valueChanged: (value) {},
                      isPassword: true,
                      textController: textController2,
                      focusNode: focusNode2,
                      hintText: "Password",
                      keyType: TextInputType.text),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyCustomInout(
                      valueChanged: (value) {},
                      isPassword: true,
                      textController: textController3,
                      focusNode: focusNode3,
                      hintText: "Confirm Password",
                      keyType: TextInputType.text),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: MyCustomButton(
                buttoText: "Resister",
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SelectQuizScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h),
              child: Text(
                "If you have already account click here",
                style: MyTextStyles.interRegular400.copyWith(
                  fontSize: 13.sp,
                  color: MyColors.black.withOpacity(0.4),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
