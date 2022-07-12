import 'package:exoansion_tile/data/quiz_repostory.dart';
import 'package:exoansion_tile/global/select_test_item.dart';
import 'package:exoansion_tile/model/quiz_data.dart';
import 'package:exoansion_tile/screens/my_quiz_screen.dart';
import 'package:exoansion_tile/utils/colors.dart';
import 'package:exoansion_tile/utils/icons.dart';
import 'package:flutter/material.dart';

class SelectQuizScreen extends StatefulWidget {
  const SelectQuizScreen({super.key});

  @override
  State<SelectQuizScreen> createState() => _SelectQuizScreenState();
}

class _SelectQuizScreenState extends State<SelectQuizScreen> {
  List<QuizData> englishDataSet = QuizRepostory.getEnglishQuizes();
  List<QuizData> mathDataSet = QuizRepostory.mathSet();
  List<QuizData> sportDataSet = QuizRepostory.sportSet();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColors.white,
        appBar: AppBar(
          backgroundColor: MyColors.C_4047C1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                MyIcons.user,
                width: 40,
                height: 40,
              ),
              Image.asset(
                MyIcons.logo2,
                height: 40,
              ),
              Image.asset(
                MyIcons.wallet,
                width: 40,
                height: 40,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SelectTestItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return MyQuizScreen(
                            quizList: englishDataSet,
                            quizName: "English Test",
                          );
                        },
                      ),
                    );
                  },
                  gradientColor1: MyColors.redBar,
                  text: "English",
                  questionsCount: englishDataSet.length,
                  iconPath: MyIcons.bookStack,
                  derection: 1),
              SelectTestItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return MyQuizScreen(
                            quizList: mathDataSet,
                            quizName: "Math Test",
                          );
                        },
                      ),
                    );
                  },
                  gradientColor1: MyColors.blueBar,
                  text: "Math",
                  questionsCount: mathDataSet.length,
                  iconPath: MyIcons.bookStack,
                  derection: 2),
              SelectTestItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return MyQuizScreen(
                            quizList: sportDataSet,
                            quizName: "Sport Test",
                          );
                        },
                      ),
                    );
                  },
                  gradientColor1: MyColors.purpleBar,
                  text: "Sport",
                  questionsCount: sportDataSet.length,
                  iconPath: MyIcons.bookStack,
                  derection: 1),
            ],
          ),
        )),
      ),
    );
  }
}
