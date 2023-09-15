import 'package:calculator/ui/style.dart';
import 'package:calculator/widgets/nbr_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: getColorPrimary(darkMode),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: darkMode ? dark : light,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: darkMode ? dark : light,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 34,
                        height: 34,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              darkMode = !darkMode;
                            });
                          },
                          child: Icon(
                            darkMode ? Icons.dark_mode : Icons.sunny,
                            color: !darkMode ? dark : light,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 140,
                color: getColorPrimary(darkMode),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "54",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: getColorPrimary(!darkMode),
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "35+25-6",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: getColorPrimary(!darkMode),
                            fontSize: 24,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    color: Colors.transparent,
                                    child: Icon(
                                      Icons.access_time_sharp,
                                      color: getColorPrimary(!darkMode),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    color: Colors.transparent,
                                    child: Icon(
                                      Icons.swap_horiz,
                                      color: getColorPrimary(!darkMode),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    color: Colors.transparent,
                                    child: Icon(
                                      Icons.calculate_outlined,
                                      color: getColorPrimary(!darkMode),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.transparent,
                        child: Icon(
                          Icons.backspace_outlined,
                          color: getTheColorOfEqualButton(darkMode),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: getColorPrimary(!darkMode),
                  borderRadius: BorderRadius.circular(100),
                ),
                height: 1.5,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: getColorPrimary(darkMode),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "C",
                              size: 30.0,
                              color: getTheColorOfC(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "()",
                              size: 30.0,
                              color: getTheColorOfSpButton(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "%",
                              size: 30.0,
                              color: getTheColorOfSpButton(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "÷",
                              size: 45.0,
                              color: getTheColorOfSpButton(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "7",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "8",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "9",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "×",
                              size: 45.0,
                              color: getTheColorOfSpButton(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "4",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "5",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "6",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "-",
                              size: 45.0,
                              color: getTheColorOfSpButton(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "1",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "2",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "3",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "+",
                              size: 45.0,
                              color: getTheColorOfSpButton(darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "+/-",
                              size: 25.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "0",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: ".",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: NbrButten(
                              nbr: "=",
                              size: 45.0,
                              color: light,
                              bgColor: getTheColorOfEqualButton(darkMode),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
