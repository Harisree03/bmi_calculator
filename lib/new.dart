import 'dart:math';

import 'package:flutter/material.dart';
class Calculate{
  Calculate({
    required this.height,required this.weight,});
  final int height;
  final int weight;
  double _bmi=0;
  String result(){
    _bmi=(weight/pow(height/100,2));
    return _bmi.toStringAsFixed(2);
  }
  String getText(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }
    else if(_bmi>18.5){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }
  String getAdvice(){
    if(_bmi>25) {
      return 'You have a more than noramal body.\n Try to do more Excercise';
    }
    else if(_bmi>18.5){
      return 'You have a noramal body.\n Good job!';
    }
    else{
      return 'You have a less than noramal body.\n Try to do eat more';

    }
  }
}