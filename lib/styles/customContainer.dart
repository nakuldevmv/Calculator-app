// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomContainerBox extends StatelessWidget {
  final Widget child;

  const CustomContainerBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = 411.42857142857144;
    // final screenHeight = 843.4285714285714;
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;
    const ratioh = screenHeight > 592.0 ? screenHeight / 80 : screenHeight / 60;
    const ratiow = screenWidth > 360.0 ? screenWidth / 265 : screenWidth / 230;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;
    return Container(
      margin: const EdgeInsets.only(top: 21, left: 22),
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: const Color.fromARGB(75, 0, 0, 0)
          // gradient: const LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //     Color(0xFF153F5B),
          //     Color.fromARGB(255, 26, 77, 112),
          //   ],
          // ),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Color.fromARGB(255, 33, 95, 137),
          //     offset: Offset(-5, -5),
          //     blurRadius: 5,
          //     spreadRadius: 0.0,
          //   ),
          //   BoxShadow(
          //     color: Color.fromARGB(255, 1, 18, 27),
          //     offset: Offset(5, 5),
          //     blurRadius: 5,
          //     spreadRadius: 0.0,
          //   )
          // ],
          ),
      child: child,
    );
  }
}

class CustomContainerBox2 extends StatelessWidget {
  final Widget child;

  const CustomContainerBox2({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;
    const ratioh = screenHeight > 592.0 ? screenHeight / 440 : screenHeight / 325;
    const ratiow = screenWidth > 360.0 ? screenWidth / 80 : screenWidth / 60;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;
    return Container(
      margin: const EdgeInsets.only(top: 21, left: 22),
      width: buttonWidth,
      height: buttonHeight,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: const Color.fromARGB(75, 0, 0, 0)),
      child: child,
    );
  }

  // 1. Change to a regular class (not a widget)
  static const TextStyle style = TextStyle(
    // 2. Use a static const property for style
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static const TextStyle style01 = TextStyle(
    // 2. Use a static const property for style
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}

// class TextStyleClass {
//   // 1. Change to a regular class (not a widget)
//   static const TextStyle style = TextStyle(
//     // 2. Use a static const property for style
//     fontSize: 25,
//     fontWeight: FontWeight.normal,
//     color: Colors.white,
//   );
// }

class ElevatedButtonStyle {
  static ButtonStyle btnstyle(BuildContext context) {
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;

    const ratioh = screenHeight > 592.0 ? screenHeight / 70 : screenHeight / 60;
    const ratiow = screenWidth > 360.0 ? screenWidth / 70 : screenWidth / 60;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;

    return ElevatedButton.styleFrom(
      minimumSize: const Size(buttonWidth, buttonHeight),
      backgroundColor: const Color.fromARGB(127, 1, 5, 7),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(screenWidth * 1),
      ),
    );
  }

  static ButtonStyle btnstyle0(BuildContext context) {
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;

    const ratioh = screenHeight > 592.0 ? screenHeight / 70 : screenHeight / 60;
    const ratiow = screenWidth > 360.0 ? screenWidth / 170 : screenWidth / 147;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;

    return ElevatedButton.styleFrom(
      minimumSize: const Size(buttonWidth, buttonHeight),
      backgroundColor: const Color.fromARGB(127, 1, 5, 7),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  static ButtonStyle operatorStyle(BuildContext context) {
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;
    const ratioh = screenHeight > 592.0 ? screenHeight / 80 : screenHeight / 60;
    const ratiow = screenWidth > 360.0 ? screenWidth / 80 : screenWidth / 60;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;

    return ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(buttonWidth, buttonHeight),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ));
  }

  static ButtonStyle scientificBtn(BuildContext context) {
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;
    const ratioh = screenHeight > 592.0 ? screenHeight / 80 : screenHeight / 60;
    const ratiow = screenWidth > 360.0 ? screenWidth / 90 : screenWidth / 70;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;

    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(0),
      elevation: 0,
      minimumSize: const Size(buttonWidth, buttonHeight),
      backgroundColor: const Color.fromARGB(127, 1, 5, 7),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  static ButtonStyle operatorStyleEquals(BuildContext context) {
    const screenWidth = 411.42857142857144;
    const screenHeight = 843.4285714285714;
    const ratioh = screenHeight > 592.0 ? screenHeight / 80 : screenHeight / 60;
    const ratiow = screenWidth > 360.0 ? screenWidth / 80 : screenWidth / 60;

    const buttonWidth = screenWidth / ratiow;
    const buttonHeight = screenHeight / ratioh;

    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(0),
      elevation: 0,
      minimumSize: const Size(buttonWidth, buttonHeight),
      backgroundColor: const Color.fromARGB(124, 0, 0, 0),
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}

// ignore: camel_case_types
class mainscreen extends StatelessWidget {
  final Widget child;
  bool isValue = false;

  mainscreen({
    super.key,
    required this.child,
    required this.isValue,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(top: 46, left: 18, right: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: isValue
            ? const LinearGradient(
                colors: [
                  Color.fromARGB(255, 31, 80, 121),
                  Color(0xff153f5b),
                  Color(0xff10344b)
                ],
                stops: [
                  0.33,
                  0.66,
                  1
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )
            : const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff333333),
                  Color(0xff333333),
                ],
              ),
        boxShadow: isValue
            ? const [
                BoxShadow(
                  color: Color.fromARGB(255, 92, 92, 92),
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0xff141414),
                  offset: Offset(5, 5),
                  blurRadius: 15,
                  spreadRadius: 0,
                ),
              ]
            : null,
      ),
      duration: const Duration(milliseconds: 250),
      child: child,
    );
  }
}
