import 'package:calculator/widget/button_calc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calc());
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String result = "0";
  String output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";
  String history ="";

  buttonPressed(String buttonValue) {
    print(buttonValue);
    if (buttonValue == "C") {
      output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    }else if (buttonValue == "AC") {
      output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
      history="";
    }else if(buttonValue == "+/-"){
      if(output[0]!='-'){
        output='-'+output;
      }else{
       output=output.substring(1);
      }

    }
    else if (buttonValue == "+" ||
        buttonValue == "-" ||
        buttonValue == "x" ||
        buttonValue == "/" ||
       buttonValue=="%") {
      num1 = double.parse(result);
      operand = buttonValue;
      output = "0";
      result = result + buttonValue;

    }

    else if (buttonValue == ".") {
      if (output.contains(".")) {
        print("Already exist");
        return;
      } else {
        output = output + buttonValue;
      }

    } else if (buttonValue == "=") {
      num2 = double.parse(result);
      if (operand == "+") {
        output = (num2 + num1).toString();
        history=num1.toString()+operand.toString()+num2.toString();
      }
      if (operand == "-") {
        output = (num1 - num2).toString();
        history=num1.toString()+operand.toString()+num2.toString();
      }
      if (operand == "x") {
        output = (num2 * num1).toString();
        history=num1.toString()+operand.toString()+num2.toString();
      }
      if (operand == "/") {
        output = (num1 / num2).toString();
        history=num1.toString()+operand.toString()+num2.toString();
      }
      if (operand == "%") {
        output = (num1 % num2).toString();
        history=num1.toString()+operand.toString()+num2.toString();
      }
      num1 = 0.0;
      num2 = 0.0;

      // output = "0";
    } else {
      output = output + buttonValue;
    }

    setState(() {
      result = double.parse(output).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFE7F6F2),
          body: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding:
                  EdgeInsets.symmetric(horizontal: 12.0,  vertical: 15.0),
                  child: Text(
                    history,
                    style: TextStyle(
                        fontSize: 40.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 50.0),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xFFF94C66),
                    thickness: 1.5,

                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Buttons(
                          ButtonVal: 'AC',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('AC');

                          },
                        ),
                        Buttons(
                          ButtonVal: 'C',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('C');
                          },
                        ),
                        Buttons(
                          ButtonVal: '%',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('%');
                          },
                        ),
                        Buttons(
                          ButtonVal: 'x',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('x');
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          ButtonVal: '7',
                          buttonPressed: () {
                            buttonPressed('7');
                          },
                        ),
                        Buttons(
                          ButtonVal: '8',
                          buttonPressed: () {
                            buttonPressed('8');
                          },
                        ),
                        Buttons(
                          ButtonVal: '9',
                          buttonPressed: () {
                            buttonPressed('9');
                          },
                        ),
                        Buttons(
                          ButtonVal: '/',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('/');
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          ButtonVal: '4',
                          buttonPressed: () {
                            buttonPressed('4');
                          },
                        ),
                        Buttons(
                          ButtonVal: '5',
                          buttonPressed: () {
                            buttonPressed('5');
                          },
                        ),
                        Buttons(
                          ButtonVal: '6',
                          buttonPressed: () {
                            buttonPressed('6');
                          },
                        ),
                        Buttons(
                          ButtonVal: '+',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('+');
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          ButtonVal: '1',
                          buttonPressed: () {
                            buttonPressed('1');
                          },
                        ),
                        Buttons(
                          ButtonVal: '2',
                          buttonPressed: () {
                            buttonPressed('2');
                          },
                        ),
                        Buttons(
                          ButtonVal: '3',
                          buttonPressed: () {
                            buttonPressed('3');
                          },
                        ),
                        Buttons(
                          ButtonVal: '-',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('-');
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          ButtonVal: '0',
                          buttonPressed: () {
                            buttonPressed('0');
                          },
                        ),
                        Buttons(
                          ButtonVal: '=',

                          buttonPressed: () {
                            buttonPressed('=');
                          },
                        ),
                        Buttons(
                          ButtonVal: '.',
                          buttonPressed: () {
                            buttonPressed('.');
                          },
                        ),
                        Buttons(
                          ButtonVal: '+/-',
                          newColor: 0xFF24A19C,
                          buttonPressed: () {
                            buttonPressed('+/-');
                          },
                        ),
                      ],
                    )
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
