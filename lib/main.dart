import 'package:flutter/material.dart';
import 'package:gstcalculator/buttons.dart';
import 'package:gstcalculator/gstbuttons.dart';

void main() {
  runApp(GSTCalculatorApp());
}

// ignore: non_constant_identifier_names
var userinput = "";
var answer = "";

class GSTCalculatorApp extends StatefulWidget {
  @override
  _GSTCalculatorState createState() => _GSTCalculatorState();
}

class _GSTCalculatorState extends State<GSTCalculatorApp> {
  @override
  Widget build(BuildContext context) {
    String $;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GST Calculator",
      home: Scaffold(
        backgroundColor: Color(0xFF13131b),
        appBar: AppBar(
          title: Center(child: Text('GST Calculator')),
          backgroundColor: Colors.black54,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    answer,
                    style: TextStyle(fontSize: 25, color: Colors.white54),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    '123',
                    style: TextStyle(color: Colors.white, fontSize: 45),
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
                        setState(() {
                          userinput = "7";
                          answer += userinput;
                        });
                      },
                      btntext: '7',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      buttontapped: () {
                        setState(() {
                          userinput = "8";
                          answer += userinput;
                        });
                      },
                      btntext: '8',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      buttontapped: () {
                        setState(() {
                          userinput = "9";
                          answer += userinput;
                        });
                      },
                      btntext: '9',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      buttontapped: () {
                        setState(() {
                          userinput = "";
                          answer = userinput;
                        });
                      },
                      btntext: 'C',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      buttontapped: () {
                        setState(() {
                          userinput =
                              userinput.substring(0, userinput.length - 1);
                          answer = userinput;
                        });
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
                      btntext: '4',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '5',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '6',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: 'X',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFD2353B,
                    ),
                    Button(
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
                      btntext: '1',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '2',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '3',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '+',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFD2353B,
                    ),
                    Button(
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
                      btntext: '0',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '00',
                      btntextsize: 25,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '.',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFFFFFFF,
                    ),
                    Button(
                      btntext: '=',
                      btntextsize: 35,
                      btncolor: 0xFF0d0d0d,
                      btntextcolor: 0xFFD2353B,
                    ),
                    Button(
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
    );
  }
}
