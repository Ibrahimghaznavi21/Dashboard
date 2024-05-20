

import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  int _i=0;
  String? message;

  int get counter=>_i;

  incrementCounter(int value){
    if(_i>=0){
      message='';
    }
    _i=_i+value;
    notifyListeners();
  }

  decrement(int value){
    if(_i==0){
      message="You can not go back, when counter value is zero";
      notifyListeners();
      return;
    }
    _i=_i-value;
    notifyListeners();

  }

}