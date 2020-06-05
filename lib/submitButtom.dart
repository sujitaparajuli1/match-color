

import 'package:color_game/matches.dart';
import 'package:color_game/previewCircle.dart';
import 'package:color_game/previewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubmitButtom extends StatelessWidget {
static var difference;
String  message(difference){
  difference=((PreviewCircle.previewHex)-(Matches.matchHex)).abs();
  if(difference<4194304)
  {
    return "Very good vision.You have 20/20 vision";
  }
  else if(difference<8388608)
  {
return"your eyesight is PreetyGood.You ar tretraAchoromatic"; 
  }
  else if(difference<12582912)
  {
    return"You need green vegetable.Not even close";
  }
  else
  {
    return "You are color blindness.Time for eye-checkup.";
  }
  
}
  @override
  Widget build(BuildContext context) {
    var color= Provider.of<PreviewModel>(context,listen: true);
    void _showDilog()
    {
    showDialog(
        context: context,
      builder:(BuildContext context)
      {
return AlertDialog(
  title:Text("Thankyou for playing"),
  content:Text(message(difference),),
  actions: <Widget>[
    FlatButton(
      child: Text("Close"),
    onPressed:() {Navigator.of(context).pop();
    }
    )
  ],
);
      }
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
          ),
         color: color.colorPreview,
          child: Text('Submit',
          style: TextStyle(
          color:Colors.white
          ),
          ),
          onPressed: () {
            message(difference);
            _showDilog();
          },
      ),
    );
  }
}