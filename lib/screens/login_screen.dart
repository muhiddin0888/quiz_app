import 'package:exoansion_tile/global/my_custom_botton.dart';
import 'package:exoansion_tile/global/my_custom_input.dart';
import 'package:exoansion_tile/screens/sms_code_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:exoansion_tile/utils/utility_function_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
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
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Lottie.asset(MyIcons.loginLottie),
          SizedBox(
            height: 50.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: MyCustomInout(
                valueChanged: (value) {},
                isPassword: false,
                focusNode: focusNode,
                textController: textController,
                hintText: "Enter Your Mobile Number",
                keyType: TextInputType.phone,
              )),
          SizedBox(
            height: 50.h,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MyCustomButton(
              buttoText: "Login",
              onTap: () {
                if (textController.text == "+998900630888") {
                  UtilityFunctions.getMyToast(message: "Enter the Code");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SMSCodeScreen();
                      },
                    ),
                  );
                } else {
                  UtilityFunctions.getMyToast(message: "Wrong Number");
                }
              },
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.h),
            child: Text(
              "term’s and conditons apply \nPOWERD BY - sparrowdevops.com",
              style: MyTextStyles.interRegular400.copyWith(
                fontSize: 12.sp,
                color: MyColors.black.withOpacity(0.5),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
