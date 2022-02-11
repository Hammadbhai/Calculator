// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

// ignore: camel_case_types
class fun extends GetxController {
  var firstnumber = '0'.obs;
  var secondnnumber = '0'.obs;
  var operation = '+'.obs;
  var result = '0'.obs;
  var lastans = '0'.obs;

  resetall() {
    firstnumber.value = '0';
    secondnnumber.value = '0';
    result.value = '0';
  }

  addnumber(String Number) {
    if (result.value == '0') {
      return result.value = Number;
    }
    //TODO Number negetive
    result.value = result.value + Number;
  }

  adddecimalpoint() {
    if (result.contains('.')) return;
    if (result.startsWith('0')) {
      result.value = '0.';
    } else {
      result.value = result.value + '.';
    }
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'X' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  delectlastentry() {
    if (result.value.replaceAll('-', '').length > 1) {
      result.value = result.value.substring(0, result.value.length - 1);
    } else {
      result.value = '0';
    }
  }

  Selectoperation(String newoperation) {
    operation.value = newoperation;
    firstnumber.value = result.value;
    result.value = '0';
  }

  calculateResult() {
    double num1 = double.parse(firstnumber.value);
    double num2 = double.parse(result.value);
    secondnnumber.value = result.value;

    switch (operation.value) {
      case '+':
        result.value = '${num1 + num2}';
        break;

      case '-':
        result.value = '${num1 - num2}';
        break;

      case 'X':
        result.value = '${num1 * num2}';
        break;

      case '/':
        result.value = '${num1 / num2}';
        break;

      default:
        return;
    }
  }

  //function to calculate the input operation
  // void equalPressed() {
  //   String finaluserinput = firstnumber.value;
  //   finaluserinput = firstnumber.replaceAll('X', '*');

  //   Parser p = Parser();
  //   Expression exp = p.parse(finaluserinput);
  //   ContextModel cm = ContextModel();
  //   double eval = exp.evaluate(EvaluationType.REAL, cm);
  //    = eval.toString();
  // }
}
