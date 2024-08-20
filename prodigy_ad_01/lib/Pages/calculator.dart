import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapptest/Controllers/controlers.dart';
import 'package:getxapptest/styles/customContainer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types
class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    // var sizeOf = MediaQuery.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    print("height $screenHeight");
    print("width $screenWidth");

    final ratioh =
        screenHeight > 592.0 ? screenHeight / 290 : screenHeight / 150;
    final ratiow = screenWidth > 360.0 ? screenWidth / 394 : screenWidth / 394;

    final containerWidth = screenWidth / ratiow;
    final containerHeight = screenHeight / ratioh;

    final ratioh2 =
        screenHeight > 592.0 ? screenHeight / 486 : screenHeight / 386;

    final containerHeight2 = screenHeight / ratioh2;

    final sr = screenHeight > 592.0 ? screenHeight / 14 : screenHeight / 8;
    final sizedboxH = screenHeight / sr;

    final sr1 = screenHeight > 592.0 ? screenHeight / 21 : screenHeight / 6;
    final sizedboxH1 = screenHeight / sr1;

    final sr2 = screenWidth > 592.0 ? screenWidth / 22 : screenWidth / 22;
    final sizedboxW1 = screenWidth / sr2;
    TapResult controller = Get.put(TapResult());
    final ctrlPG = PageController(initialPage: 1);

    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GetBuilder<TapResult>(
            builder: (getanswer) {
              return mainscreen(
                isValue: controller.isValue,
                child: Container(
                  height: containerHeight,
                  width: containerWidth,
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  // color: const Color.fromARGB(66, 244, 67, 54),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: Text(
                          controller.h.toString(),
                          style: const TextStyle(fontSize: 22),
                        ),
                      ),
                      Divider(
                        color: controller.isValue != true
                            ? const Color(0xff333333)
                            : const Color.fromARGB(126, 255, 255, 255),
                        height: controller.isValue != true ? 0 : 8,
                        thickness: 0.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.showAns();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "=",
                              style: TextStyle(fontSize: 40),
                            ),
                            SizedBox(
                              // color: Colors.amber,
                              width: MediaQuery.of(context).size.width * .645,
                              // 273
                              child: Text(
                                textAlign: TextAlign.right,
                                overflow: controller.AnsTF
                                    ? TextOverflow.visible
                                    : TextOverflow.ellipsis,
                                controller.v.toString(),
                                style: const TextStyle(fontSize: 40),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Container(
            margin: screenHeight > 592.0
                ? const EdgeInsets.only(top: 20)
                : const EdgeInsets.only(top: 10),
            height: containerHeight2,
            // sizeOf.size.height * .58495
            width: double.maxFinite,
            decoration: const BoxDecoration(
                // color: Color(0xFF153F5B),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 31, 85, 121),
                    Color(0xff153f5b),
                    Color(0xff10344b)
                  ],
                  stops: [0.33, 0.66, 1],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  controller: ctrlPG,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.maxFinite,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: sizedboxH,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "(",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue(")");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  ")",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("^");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "^",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("abs");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "|x|",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("^2");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "x²",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("^3");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "x³",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("sqrt(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "²√",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("^(1/3)");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "³√",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("sin(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "sin",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("cos(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "cos",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("tan(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "tan",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("sinh(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "sinh",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("cosh(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "cosh",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("tanh(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "tanh",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("e^");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "eˣ",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("e");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "e",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("log10e");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "log10e",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("log2e");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "log2e",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("log(");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "log",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.scientificBtn(context),
                                onPressed: () {
                                  controller.getValue("pi");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "π",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: sizedboxH1,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomContainerBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButtonStyle.operatorStyle(
                                        context),
                                    onPressed: () {
                                      controller.clear();
                                    },
                                    child: const Text(
                                      "AC",
                                      style: CustomContainerBox2.style,
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButtonStyle.operatorStyle(
                                        context),
                                    onPressed: () {
                                      controller.backspace();
                                    },
                                    child: const Text(
                                      "C",
                                      style: CustomContainerBox2.style,
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButtonStyle.operatorStyle(
                                        context),
                                    onPressed: () {
                                      // int stringLenght = controller.v.length;
                                      // String checker = controller.v[stringLenght - 1];
                                      // if (checker.contains("+") ||
                                      //     checker.contains("-") ||
                                      //     checker.contains("*") ||
                                      //     checker.contains("/")) {
                                      //   controller.getValue(controller.v
                                      //       .substring(0, controller.v.length - 1));
                                      // }
                                      // these code if for ANS button but i cahngd this to % because its more usefull and user friendly
                                      controller.getValue("%");
                                      controller.screenUp();
                                    },
                                    child: const Text(
                                      "%",
                                      style: CustomContainerBox2.style,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: sizedboxH,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("7");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "7",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("8");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "8",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("9");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "9",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: sizedboxH1,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("4");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "4",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("5");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "5",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("6");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "6",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: sizedboxH1,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("1");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "1",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("2");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "2",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue("3");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "3",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: sizedboxH1,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle0(context),
                                  onPressed: () {
                                    controller.getValue("0");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    "0            ",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                                SizedBox(
                                  width: sizedboxW1,
                                ),
                                ElevatedButton(
                                  style: ElevatedButtonStyle.btnstyle(context),
                                  onPressed: () {
                                    controller.getValue(".");
                                    controller.screenUp();
                                  },
                                  child: const Text(
                                    ".",
                                    style: CustomContainerBox2.style,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: sizedboxH1,
                            ),
                          ],
                        ),
                        CustomContainerBox2(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.operatorStyle(context),
                                onPressed: () {
                                  controller.getValue("/");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "÷",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.operatorStyle(context),
                                onPressed: () {
                                  controller.getValue("*");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "×",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.operatorStyle(context),
                                onPressed: () {
                                  controller.getValue("-");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "-",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style:
                                    ElevatedButtonStyle.operatorStyle(context),
                                onPressed: () {
                                  controller.getValue("+");
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "+",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButtonStyle.operatorStyleEquals(
                                    context),
                                onPressed: () {
                                  controller.evaluate();
                                  controller.screenUp();
                                },
                                child: const Text(
                                  "=",
                                  style: CustomContainerBox2.style,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: screenHeight > 592
                      ? const EdgeInsets.only(bottom: 10)
                      : const EdgeInsets.only(bottom: 5),
                  child: SmoothPageIndicator(
                    controller: ctrlPG,
                    count: 2,
                    effect: const ExpandingDotsEffect(
                      dotColor: Color.fromARGB(123, 1, 5, 7),
                      dotHeight: 10,
                      dotWidth: 20,
                      activeDotColor: Color.fromARGB(64, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
