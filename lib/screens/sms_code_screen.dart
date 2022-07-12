import 'package:exoansion_tile/global/my_custom_botton.dart';
import 'package:exoansion_tile/screens/registeration_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:exoansion_tile/utils/utility_function_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SMSCodeScreen extends StatefulWidget {
  const SMSCodeScreen({super.key});

  @override
  State<SMSCodeScreen> createState() => _SMSCodeScreenState();
}

class _SMSCodeScreenState extends State<SMSCodeScreen> {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Otp",
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
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Image.asset(MyIcons.logo),
          SizedBox(
            height: 130.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.h),
            child: Text(
              "Enter your 6 digit otp here",
              style: MyTextStyles.interRegular400.copyWith(
                fontSize: 16.sp,
                color: MyColors.black.withOpacity(0.4),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 90.h),
            child: PinFieldAutoFill(
                focusNode: focusNode,
                controller: textController,
                decoration: UnderlineDecoration(
                  textStyle: MyTextStyles.interSemiBoldItalic700
                      .copyWith(fontSize: 20, color: Colors.black),
                  colorBuilder: FixedColorBuilder(Colors.black),
                ),
                onCodeSubmitted: (value) {
                  focusNode.unfocus();
                },
                onCodeChanged: (value) {
                  if (value?.length == 6) {
                    focusNode.unfocus();
                  }
                },
                codeLength: 6),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MyCustomButton(
              buttoText: "Login",
              onTap: () {
                if (textController.text == "123456") {
                  UtilityFunctions.getMyToast(
                      message: "Enter your personal data");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const RegisterationScreen();
                      },
                    ),
                  );
                } else {
                  UtilityFunctions.getMyToast(message: "Invalid code");
                }
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.h),
            child: Text(
              "login with social media",
              style: MyTextStyles.interRegular400.copyWith(
                fontSize: 16.sp,
                color: MyColors.black.withOpacity(0.4),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 52.h,
          ),
          Image.asset(
            MyIcons.otp,
            width: 200.w,
            height: 200.h,
          ),
        ],
      ),
    );
  }
}
