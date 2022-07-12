import 'package:exoansion_tile/global/expandable_widget.dart';
import 'package:exoansion_tile/global/my_custom_botton.dart';
import 'package:exoansion_tile/global/variant_item.dart';
import 'package:exoansion_tile/model/quiz_data.dart';
import 'package:exoansion_tile/screens/result_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/styles.dart';
import 'package:exoansion_tile/utils/utility_function_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen(
      {super.key, required this.quizList, required this.quizName});

  final List<QuizData> quizList;
  final String quizName;

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  int currentQuestionIndex = 0;
  String selectedVariant = "";
  int trueAnswersCount = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: const Text("Quiz Screen"),
        backgroundColor: MyColors.C_4047C1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.quizName,
              style: MyTextStyles.interSemiBold600
                  .copyWith(color: MyColors.black, fontSize: 24),
            ),
            SizedBox(
              height: 20.h,
            ),
            ExpandableWidget(
                expandableValue: currentQuestionIndex + 1,
                dataLength: widget.quizList.length),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Question: ${currentQuestionIndex + 1}",
                    style: MyTextStyles.interMedium500
                        .copyWith(color: MyColors.C_4047C1, fontSize: 22),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    widget.quizList[currentQuestionIndex].question,
                    style: MyTextStyles.interMedium500
                        .copyWith(color: MyColors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  VariantItem(
                      variantText:
                          widget.quizList[currentQuestionIndex].variant1,
                      isSelected: selectedVariant == "A",
                      onTap: () {
                        setState(() {
                          selectedVariant = "A";
                        });
                      }),
                  SizedBox(
                    height: 10.h,
                  ),
                  VariantItem(
                      variantText:
                          widget.quizList[currentQuestionIndex].variant2,
                      isSelected: selectedVariant == "B",
                      onTap: () {
                        setState(() {
                          selectedVariant = "B";
                        });
                      }),
                  SizedBox(
                    height: 10.h,
                  ),
                  VariantItem(
                      variantText:
                          widget.quizList[currentQuestionIndex].variant3,
                      isSelected: selectedVariant == "C",
                      onTap: () {
                        setState(() {
                          selectedVariant = "C";
                        });
                      }),
                  SizedBox(
                    height: 10.h,
                  ),
                  VariantItem(
                      variantText:
                          widget.quizList[currentQuestionIndex].variant4,
                      isSelected: selectedVariant == "D",
                      onTap: () {
                        setState(() {
                          selectedVariant = "D";
                        });
                      }),
                ],
              ),
            ),
            MyCustomButton(
                buttoText: "Next",
                onTap: () {
                  setState(() {
                    if (selectedVariant.isNotEmpty) {
                      if (currentQuestionIndex + 1 < widget.quizList.length) {
                        if (selectedVariant ==
                            widget.quizList[currentQuestionIndex].trueAnswer) {
                          trueAnswersCount++;
                        }
                        currentQuestionIndex++;
                        selectedVariant = "";
                      } else {
                        if (selectedVariant ==
                            widget.quizList[currentQuestionIndex].trueAnswer) {
                          trueAnswersCount++;
                        }
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return ResultScreen(
                                trueQuestionsCount: trueAnswersCount,
                                totalQuestionsCount: widget.quizList.length,
                              );
                            },
                          ),
                        );
                      }
                    } else {
                      UtilityFunctions.getMyToast(
                          message: "Select Question Variant!");
                    }
                  });
                }),
          ],
        ),
      ),
    );
  }
}
