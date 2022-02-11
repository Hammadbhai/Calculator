import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';
=======
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:gstcalculator/buttons.dart';
import 'package:gstcalculator/fun.dart';
import 'package:gstcalculator/gstbuttons.dart';
>>>>>>> Stashed changes

void main() {
  runApp(MyApp());
}

<<<<<<< Updated upstream
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}
=======
// ignore: non_constant_identifier_names
>>>>>>> Stashed changes

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

<<<<<<< Updated upstream
class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

// Array of button
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ), //AppBar
      backgroundColor: Colors.white54,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    // Clear Button
                    if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[600],
                        textColor: Colors.black,
                      );
                    }

                    // +/- button
                    else if (index == 1) {
                      return MyButton(
                        buttonText: buttons[index],
                        color: Colors.blue[600],
                        textColor: Colors.black,
                      );
                    }
                    // % Button
                    else if (index == 2) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[600],
                        textColor: Colors.black,
                      );
                    }
                    // Delete Button
                    else if (index == 3) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.blue[600],
                        textColor: Colors.black,
                      );
                    }
                    // Equal_to Button
                    else if (index == 18) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.green[700],
                        textColor: Colors.white,
                      );
                    }

                    // other buttons
                    else {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.purpleAccent[400]
                            : Colors.white,
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.black,
                      );
                    }
                  }), // GridView.builder
            ),
          ),
        ],
      ),
    );
=======
class _GSTCalculatorState extends State<GSTCalculatorApp> {
  // ignore: non_constant_identifier_names
  final cal_con = Get.put(fun());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "GST Calculator",
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 27, 27, 38),
          appBar: AppBar(
            title: Center(child: Text('GST Calculator')),
            backgroundColor: Colors.black54,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        "${cal_con.operation}",
                        style: TextStyle(
                            fontSize: 29,
                            color: Color.fromARGB(255, 223, 212, 212)),
                      ),
                      alignment: Alignment(1.0, 1.0),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "${cal_con.result}",
                        style: TextStyle(color: Colors.white, fontSize: 38),
                      ),
                      alignment: Alignment(1.0, 1.0),
                    ),
                    Container(
                      height: 80,
                      width: 500,
                      color: Color(0xFF0f0f0f),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Gstbutton(
                            gstbtntext: 'CHECK ➞',
                          ),
                          Gstbutton(
                            gstbtntext: 'CORRECT ☒',
                          ),
                          Gstbutton(
                            gstbtntext: 'CHANGE GST %',
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          btntext: '8%',
                          btntextsize: 20,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '10%',
                          btntextsize: 20,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '12%',
                          btntextsize: 20,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '18%',
                          btntextsize: 18,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '20%',
                          btntextsize: 18,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          btntext: '-8%',
                          btntextsize: 20,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '-10%',
                          btntextsize: 20,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '-12%',
                          btntextsize: 20,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '-18%',
                          btntextsize: 18,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                        Button(
                          btntext: '-20%',
                          btntextsize: 18,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFF4DE2C8,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('7');
                          },
                          btntext: "7",
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('8');
                          },
                          btntext: '8',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('9');
                          },
                          btntext: '9',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.resetall();
                          },
                          btntext: 'C',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.delectlastentry();
                          },
                          btntext: '⌫',
                          btntextsize: 30,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('4');
                          },
                          btntext: '4',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('5');
                          },
                          btntext: '5',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('6');
                          },
                          btntext: '6',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.Selectoperation('X');
                          },
                          btntext: 'X',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.Selectoperation('/');
                          },
                          btntext: '/',
                          btntextsize: 30,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('1');
                          },
                          btntext: '1',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('2');
                          },
                          btntext: '2',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('3');
                          },
                          btntext: '3',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.Selectoperation('+');
                          },
                          btntext: '+',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.Selectoperation('-');
                          },
                          btntext: '-',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('0');
                          },
                          btntext: '0',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('00');
                          },
                          btntext: '00',
                          btntextsize: 25,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('.');
                          },
                          btntext: '.',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFFFFFFF,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.calculateResult();
                          },
                          btntext: '=',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                        Button(
                          buttontapped: () {
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
                            cal_con.addnumber('%');
                          },
                          btntext: '%',
                          btntextsize: 35,
                          btncolor: 0xFF0d0d0d,
                          btntextcolor: 0xFFD2353B,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
>>>>>>> Stashed changes
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
