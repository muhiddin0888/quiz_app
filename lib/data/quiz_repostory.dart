import 'package:exoansion_tile/model/quiz_data.dart';

class QuizRepostory {
  static List<QuizData> getEnglishQuizes() {
    List<QuizData> tests = [];
    // 1
    tests.add(QuizData(
      question: "We _____ to the city museum three days ago.",
      variant1: "A. can go",
      variant2: "B. went",
      variant3: "C. go",
      variant4: "D. are going",
      trueAnswer: "B",
    ));

    // 2
    tests.add(QuizData(
      question: "Victor _____ some bad news from Ted yesterday and _____ sad.",
      variant1: "A. is hearing / is becoming",
      variant2: "B. hears / becomes",
      variant3: "C. heard / became",
      variant4: "D. can hear / become",
      trueAnswer: "C",
    ));

    // 3
    tests.add(QuizData(
      question: "_____ she _____ your books back last week?",
      variant1: "A. Can / bring",
      variant2: "B. Did / bring",
      variant3: "C. Does / bring",
      variant4: "D. Is / bringing",
      trueAnswer: "B",
    ));

    // 4
    tests.add(QuizData(
      question:
          "They often _____ questions in meetings. They just make presentations.",
      variant1: "A. didn't answer",
      variant2: "B. don't answer",
      variant3: "C. aren't answering",
      variant4: "D. can answer",
      trueAnswer: "B",
    ));

    // 5
    tests.add(QuizData(
      question: "I _____ my house last week, but it _____ dirty again now.",
      variant1: "A. cleaned / is",
      variant2: "B. clean / was",
      variant3: "C. am cleaning / is",
      variant4: "D. cleaned / was",
      trueAnswer: "A",
    ));

    // 6
    tests.add(QuizData(
        question:
            "Basil _____ an operation on his stomach last year and now he _____ no problem with it.",
        variant1: "A. can have / had",
        variant2: "B. had / has",
        variant3: "C. is having / can have",
        variant4: "D. has / had",
        trueAnswer: "B"));

    // 7
    tests.add(QuizData(
      question:
          "I _____ the window and _____ a deep breath before the exam yesterday.",
      variant1: "A. can open / can take",
      variant2: "B. open / take",
      variant3: "C. am opening / am taking",
      variant4: "D. opened / took",
      trueAnswer: "D",
    ));

    // 8
    tests.add(QuizData(
        question:
            "He _____ fishing three times a week because he _____ spending time by the lake.",
        variant1: "A. went / love",
        variant2: "B. goes / loves",
        variant3: "C. is going / loved",
        variant4: "D. goes / is loving",
        trueAnswer: "B"));

    // 9
    tests.add(QuizData(
        question:
            "Nina _____ in the park alone yesterday morning and she _____ a book.",
        variant1: "A. can sit / reads",
        variant2: "B. sits / reads",
        variant3: "C. is sitting / is reading",
        variant4: "D. sat / read",
        trueAnswer: "D"));

    // 10
    tests.add(QuizData(
        question:
            "The twins _____ an experiment in the lab these days, so they _____ usually busy.",
        variant1: "A. did / were",
        variant2: "B. are doing / are",
        variant3: "C. can do / were",
        variant4: "D. do / are",
        trueAnswer: "B"));
    return tests;
  }

  static List<QuizData> mathSet() {
    List<QuizData> test = [];
    test.add(QuizData(
      question: "Simmetriya o'qi tenglamasini belgilang",
      variant1: "A. x = x0",
      variant2: "B. x = 0",
      variant3: "C. x = a^2 + b^2",
      variant4: "D. x = 1",
      trueAnswer: "A",
    ));

    test.add(QuizData(
      question: "Cheksiz kamayuvchi geometrik progressiya bo'lishlik sharti?",
      variant1: "A. |q| < 1",
      variant2: "B. q > 0",
      variant3: "C. |q| < 0",
      variant4: "D. Aniqlab bo'lmaydi",
      trueAnswer: "A",
    ));

    test.add(QuizData(
      question:
          "Vatarga perpendikulyar diametr shu vatarni va unga tiralgan yoyni teng ______ bo'ladi.",
      variant1: "A. uchga",
      variant2: "B. ikkiga",
      variant3: "C. to'rt bo'lakka",
      variant4: "D. 5 va undan ortiqqa",
      trueAnswer: "B",
    ));

    test.add(QuizData(
      question:
          "Ko'pburchakning ichki burchaklar yig'indisi qanday topiladi? (formulasi)",
      variant1: "A. n - 3 ",
      variant2: "B. n * (n - 3) / 2",
      variant3: "C. 180 * (n - 2)",
      variant4: "D. Har doim 360 gradus bo'ladi",
      trueAnswer: "C",
    ));

    test.add(QuizData(
      question: "Aylanada olingan n ta nuqtadan nechta kesma o'tkazish mumkin?",
      variant1: "A. n * (n - 1) / 2  ta",
      variant2: "B. n - 1  ta ",
      variant3: "C. cheksiz ta kesma olish mumkin",
      variant4: "D. 5 va undan ortiq",
      trueAnswer: "A",
    ));

    return test;
  }

  static List<QuizData> sportSet() {
    List<QuizData> test = [];
    test.add(QuizData(
      question: "Which team is the latest champion in basketball game",
      variant1: "A. Golden State Warriors",
      variant2: "B. Boston Celtics",
      variant3: "C. Phoe Suns",
      variant4: "D. Dallas Mave",
      trueAnswer: "A",
    ));

    test.add(QuizData(
      question:
          "How many goals Ronaldo scored for Real Madrid in Champions League?",
      variant1: "A. 100",
      variant2: "B. 105",
      variant3: "C. 200",
      variant4: "D. 180",
      trueAnswer: "B",
    ));

    test.add(QuizData(
      question: "From which year Benzema has been playing for Real Madrid?",
      variant1: "A. Since 2000",
      variant2: "B. Since 2002",
      variant3: "C. Since 2007",
      variant4: "D. Since 2009",
      trueAnswer: "D",
    ));

    test.add(QuizData(
      question: "How old is Messi",
      variant1: "A. 37 years old",
      variant2: "B. 35 years old",
      variant3: "C. 33 years old",
      variant4: "D. 30 years old",
      trueAnswer: "B",
    ));

    test.add(QuizData(
      question: "To which team Mane want to play in these days?",
      variant1: "A. Of Course, Liverpool",
      variant2: "B. Bayern Munich",
      variant3: "C. Real Madrid",
      variant4: "D. I don't know",
      trueAnswer: "B",
    ));
    return test;
  }
}
