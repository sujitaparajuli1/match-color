import 'package:color_game/circle.dart';
import 'package:color_game/previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreviewCircle extends StatelessWidget {
  static var previewHex;
  @override
  Widget build(BuildContext context) {
    var color =Provider.of<PreviewModel>(context,listen: true);
    previewHex =color.colorPreview.value;
    return Column(
      children: <Widget>[
        Circle(
          color.colorPreview
        ),
        Text(previewHex.toString()),
      ],
    );
  }
}