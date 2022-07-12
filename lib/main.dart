import 'package:exoansion_tile/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) async {
  runApp(const MyQuizApp());
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
}

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      }),
      child: const SplashScreen(),
    );
  }
} 










// class MyGrid extends StatefulWidget {
//   const MyGrid({super.key});

//   @override
//   State<MyGrid> createState() => _MyGridState();
// }

// class _MyGridState extends State<MyGrid> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: GridView.count(
//         padding: EdgeInsets.all(10),
//         crossAxisCount: 3,
//         crossAxisSpacing: 15,
//         mainAxisSpacing: 15,
//         childAspectRatio: 1,
//         children: List.generate(
//           100,
//           (index) => ClipRRect(
//             borderRadius: BorderRadius.circular(16),
//             child: Image.network(
//               "https://media.wired.co.uk/photos/61e0bda26e0778ad10beb48a/16:9/w_2560%2Cc_limit/Gear-Mercedes-EQS-21C0123_001.jpg",
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
