import 'package:color_game/matches.dart';
import 'package:color_game/previewCircle.dart';
import 'package:color_game/resetButtom.dart';
import 'package:color_game/sliders.dart';

import 'package:color_game/submitButtom.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title:Text('color match')
),
      body: Column(
        children: <Widget>[
          Center(
            
            child: Text("Match Color",
            style: TextStyle(
              
              fontSize:40,
              fontWeight: FontWeight.bold),
          
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             
              PreviewCircle(),
              Matches(),
               
            ],
          ),
          Sliders(),
          ResetButtom(),
          SubmitButtom()
        ],
      ),
    );
  }
}