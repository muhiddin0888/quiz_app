import 'package:exoansion_tile/global/my_custom_botton.dart';
import 'package:exoansion_tile/screens/quiz_home_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key,
      required this.totalQuestionsCount,
      required this.trueQuestionsCount});
  final int totalQuestionsCount;
  final int trueQuestionsCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(MyIcons.done),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Congratulations you finished test successefully",
              style: MyTextStyles.interSemiBold600
                  .copyWith(fontSize: 20, color: Colors.green),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "True Answers: ${widget.trueQuestionsCount}",
              style: MyTextStyles.interSemiBold600.copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 250.h,
            ),
            MyCustomButton(
              buttoText: "Back to Home Page",
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
          ],
        ),
      ),
    );
  }
}
