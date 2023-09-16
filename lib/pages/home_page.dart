import 'package:calculator/function.dart';
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
  late double resultDoubl;
  late int resultInt;
  String helpResult = "";
  String nbr1 = "";
  late double nbr11;
  String nbr2 = "";
  setNbr2(String reset) {
    nbr2 = reset;
  }

  late double nbr22;
  String opiration = "";
  late String hisoka;
  Equal(double nbr1, String op, double nbr2) {
    switch (op) {
      case "+":
        return nbr1 + nbr2;

      case "-":
        return nbr1 - nbr2;

      case "÷":
        if (nbr22 != 0) {
          return nbr1 / nbr2;
        } else {
          alart("Can't divide by zero");
          setNbr2("");
          return "";
        }

      case "×":
        return nbr1 * nbr2;
      case "":
        return nbr1;
    }
  }

  alart(String msg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: getColorPrimary(!darkMode),
        content: Text(
          msg,
          style: TextStyle(color: getColorPrimary(darkMode)),
        ),
      ),
    );
    Future.delayed(Duration(milliseconds: 1200), () {
      Navigator.of(context).pop();
    });
  }

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
                            "${helpResult}", //==========================================================================
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
                          "${nbr1}",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: getColorPrimary(!darkMode),
                            fontSize: 36,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "${opiration}",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: getTheColorOfEqualButton(darkMode),
                            fontSize: 36,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "${nbr2}",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: getColorPrimary(!darkMode),
                            fontSize: 36,
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
                            onTap: () {
                              setState(() {
                                nbr1 = "";
                                nbr2 = "";
                                opiration = "";
                                helpResult = "";
                              });
                            },
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
                            onTap: () {
                              setState(
                                () {
                                  if (nbr1 == "") {
                                    if (helpResult == "") {
                                      alart("Invalid format used");
                                    } else {
                                      nbr1 = helpResult;
                                      opiration = "÷";
                                    }
                                  } else {
                                    if (nbr2 == "") {
                                      opiration = "÷";
                                    } else {
                                      nbr11 = double.parse(nbr1);
                                      nbr22 = double.parse(nbr2);
                                      helpResult = fixDisplay(
                                          Equal(nbr11, opiration, nbr22)
                                              .toString());
                                      nbr1 = helpResult;
                                      opiration = "÷";
                                      nbr2 = "";
                                    }
                                  }

                                  // opiration = "÷";
                                },
                              );
                            },
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
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "7";
                                    } else {
                                      nbr1 = "7";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "7";
                                    } else {
                                      nbr2 = "7";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "7",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "8";
                                    } else {
                                      nbr1 = "8";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "8";
                                    } else {
                                      nbr2 = "8";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "8",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "9";
                                    } else {
                                      nbr1 = "9";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "9";
                                    } else {
                                      nbr2 = "9";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "9",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (nbr1 == "") {
                                    if (helpResult == "") {
                                      alart("Invalid format used");
                                    } else {
                                      nbr1 = helpResult;
                                      opiration = "×";
                                    }
                                  } else {
                                    if (nbr2 == "") {
                                      opiration = "×";
                                    } else {
                                      nbr11 = double.parse(nbr1);
                                      nbr22 = double.parse(nbr2);
                                      helpResult = fixDisplay(
                                          Equal(nbr11, opiration, nbr22)
                                              .toString());
                                      nbr1 = helpResult;
                                      opiration = "×";
                                      nbr2 = "";
                                    }
                                  }
                                },
                              );
                            },
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
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "4";
                                    } else {
                                      nbr1 = "4";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "4";
                                    } else {
                                      nbr2 = "4";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "4",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "5";
                                    } else {
                                      nbr1 = "5";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "5";
                                    } else {
                                      nbr2 = "5";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "5",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "6";
                                    } else {
                                      nbr1 = "6";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "6";
                                    } else {
                                      nbr2 = "6";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "6",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (nbr1 == "") {
                                    if (helpResult == "") {
                                      alart("Invalid format used");
                                    } else {
                                      nbr1 = helpResult;
                                      opiration = "-";
                                    }
                                  } else {
                                    if (nbr2 == "") {
                                      opiration = "-";
                                    } else {
                                      nbr11 = double.parse(nbr1);
                                      nbr22 = double.parse(nbr2);
                                      helpResult = fixDisplay(
                                          Equal(nbr11, opiration, nbr22)
                                              .toString());
                                      nbr1 = helpResult;
                                      opiration = "-";
                                      nbr2 = "";
                                    }
                                  }
                                },
                              );
                            },
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
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "1";
                                    } else {
                                      nbr1 = "1";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "1";
                                    } else {
                                      nbr2 = "1";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "1",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "2";
                                    } else {
                                      nbr1 = "2";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "2";
                                    } else {
                                      nbr2 = "2";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "2",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "3";
                                    } else {
                                      nbr1 = "3";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "3";
                                    } else {
                                      nbr2 = "3";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "3",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (nbr1 == "") {
                                    if (helpResult == "") {
                                      alart("Invalid format used");
                                    } else {
                                      nbr1 = helpResult;
                                      opiration = "+";
                                    }
                                  } else {
                                    if (nbr2 == "") {
                                      opiration = "+";
                                    } else {
                                      nbr11 = double.parse(nbr1);
                                      nbr22 = double.parse(nbr2);
                                      helpResult = fixDisplay(
                                          Equal(nbr11, opiration, nbr22)
                                              .toString());
                                      nbr1 = helpResult;
                                      opiration = "+";
                                      nbr2 = "";
                                    }
                                  }
                                },
                              );
                            },
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
                            onTap: () {
                              setState(
                                () {
                                  if (opiration == "") {
                                    if (nbr1 != "0") {
                                      nbr1 += "0";
                                    }
                                  } else {
                                    if (nbr2 != "0") {
                                      nbr2 += "0";
                                    }
                                  }
                                },
                              );
                            },
                            child: NbrButten(
                              nbr: "0",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (opiration == "") {
                                  if (nbr1 == "") {
                                    nbr1 = "0.";
                                  } else {
                                    if (!nbr1.contains(".")) {
                                      nbr1 += ".";
                                    }
                                  }
                                } else {
                                  if (nbr2 == "") {
                                    nbr2 = "0.";
                                  } else {
                                    if (!nbr2.contains(".")) {
                                      nbr2 += ".";
                                    }
                                  }
                                }
                              });
                            },
                            child: NbrButten(
                              nbr: ".",
                              size: 30.0,
                              color: getColorPrimary(!darkMode),
                              bgColor: bgButton,
                            ),
                          ),
                          GestureDetector(
                            //=========================================================================================================
                            onTap: () {
                              setState(
                                () {
                                  nbr11 = double.parse(nbr1);
                                  nbr22 = double.parse(nbr2);
                                  helpResult = fixDisplay(
                                      Equal(nbr11, opiration, nbr22)
                                          .toString());
                                  nbr1 = "";
                                  nbr2 = "";
                                  opiration = "";
                                },
                              );
                            },
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
