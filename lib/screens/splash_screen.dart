import 'package:exoansion_tile/screens/login_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const LoginScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: MyColors.C_4047C1,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: MyColors.C_4047C1)),
      backgroundColor: MyColors.C_4047C1,
      body: Center(
        child: Text(
          "Welcome",
          style: MyTextStyles.interSemiBoldItalic700
              .copyWith(fontSize: 24.sp, color: MyColors.white),
        ),
      ),
    );
  }
}
