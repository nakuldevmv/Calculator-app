// ignore_for_file: camel_case_types

import 'package:get/get.dart';
import 'package:function_tree/function_tree.dart';

class AnimatedController extends GetxController {
  var isElevated = true.obs;

  void toggleElevation() {
    isElevated.value = !isElevated.value;
  }
}

class TapResult extends GetxController {
  String _x = "";
  String _v = "0";
  String ans = "";
  String _h = " ";
  String get h => _h;
  String get v => _v;
  String get x => _x;
  set x(String value) {
    _x = value;
    update();
  }

  void getValue(String value) {
    if (_v == "0" || _v == "Infinity") {
      _v = "";
      _h = "";
      _v += value;
      _h += value;
    } else {
      _v += value;
      _h += value;
    }

    update();
  }

  void backspace() {
    if (_v.contains("+") ||
        _v.contains("-") ||
        _v.contains("*") ||
        _v.contains("%") ||
        _v.contains("^") ||
        _v.contains("/")) {
      if (_v.isNotEmpty) {
        _v = _v.substring(0, _v.length - 1);

        if (_h.isNotEmpty) {
          _h = _h.substring(0, _h.length - 1);
        }
      }
    }
    update();
  }

  void evaluate() {
    int stringLenght = _v.length;
    String checker = _v[stringLenght - 1];
    if (checker.contains("+") ||
        checker.contains("-") ||
        checker.contains("*") ||
        checker.contains("/")) {
    } else {
      _v = _v.interpret().toString();
    }
    // _h = _v;
    // print(_v);
    update();
  }

  void clear() {
    _x = "";
    _v = "0";
    _h = "";
    ans = "";
    isValue = false;

    update();
  }

  bool isValue = false;
  void screenUp() {
    isValue = true;
    update();
  }

  // ignore: non_constant_identifier_names
  bool AnsTF = false;
  void showAns() {
    AnsTF = !AnsTF;
    update();
  }
}
