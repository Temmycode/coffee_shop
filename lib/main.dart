// import 'package:coffee_shop/views/pages/home_page.dart';
import 'package:coffee_shop/controllers/setup/colors/app_colors.dart';
import 'package:coffee_shop/views/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// class ButtonMover extends StatelessWidget {
//   const ButtonMover({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // ButtonInputElement()
//             Container(
//               child: ButtonActivateIntent(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
