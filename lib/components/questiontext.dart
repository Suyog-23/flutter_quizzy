import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget{

  var questiontext;
  var fontstyling;

  QuestionText(String questiontext){

    this.questiontext = questiontext;
    this.fontstyling = FontWeight.bold;
  }

  QuestionText.itlaic(String questiontext){
    this.questiontext = questiontext;
    this.fontstyling = FontWeight.normal;
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 15),
      child: Text(questiontext, style: TextStyle(
          fontWeight: fontstyling, color: Colors.black, fontSize: 20, 
      ),
      ),
    );
  }
}