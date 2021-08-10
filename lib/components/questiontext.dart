import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget{

  var questiontext;

  QuestionText(String questiontext){

    this.questiontext = questiontext;

  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 15),
      child: Text(questiontext, style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20, 
      ),
      ),
    );
  }
}