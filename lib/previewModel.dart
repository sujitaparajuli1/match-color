import 'package:color_game/uniqueColorGenerator.dart';
import 'package:flutter/cupertino.dart';

class PreviewModel with ChangeNotifier
{
  Color colorPreviewModel =UniqueColorGenerator.getColor();
  Color get colorPreview =>colorPreviewModel;


//Reset method
void reset()
{
colorPreviewModel =UniqueColorGenerator.getColor();
notifyListeners();
}
}