import 'package:color_game/mathchesModel.dart';
import 'package:color_game/previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorPreview =Provider.of<PreviewModel>(context,listen: true);
    void colorPreviewReset(){
      colorPreview.reset();
    }
    var colorMatch =Provider.of<MatchesModel>(context);
    void matchesReset(){
colorMatch.red=0;
colorMatch.green=0;
colorMatch.blue=0;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(30)
        ) ,
        color: Colors.blue,
        child: Text('Reset',style:TextStyle(color: Colors.white)),
         onPressed: () {
           colorPreviewReset();
           matchesReset();
         },

      ),
    );
  }
}