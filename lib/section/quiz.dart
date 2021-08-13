import 'package:flutter/material.dart';
import '../components/banner_image.dart';
import '../components/questiontext.dart';

class Quiz extends StatelessWidget{

  String bannerimage;
  String questiontext;
  var answertext;
  final Function indi_ans_text;

  Quiz(this.bannerimage, this.questiontext, this.answertext, this.indi_ans_text);

  @override 
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  BannerImage(bannerimage),
            
                  // Text Question ---------------------------------------------
                  QuestionText.itlaic(questiontext), // Questions
            
                  // Buttons: using map and spread operator --------------------
                  ...(answertext).map(
                    indi_ans_text,
                    ).toList() 
                  // Map function ends ------------------------------------------
                  
                ], 
    );
  }
}