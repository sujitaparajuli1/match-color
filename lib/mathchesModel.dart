import 'package:flutter/cupertino.dart';

class MatchesModel with ChangeNotifier{
  double _red =0.0;
  double _green =0.0;
  double _blue =0.0;
  double get red=>_red;
  //getter for red
  set red(double value)
  {
    _red=value;
    notifyListeners();
  }
  //getter for green
  double get green =>_green;
  set green(double value)
  {
_green=value;
notifyListeners();
  }
  //getter for blue
  double get blue =>_blue;
  set blue(double value)
  {
    _blue = value;
    notifyListeners();
  }
}
