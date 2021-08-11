import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

  var answertext;
  final Function answerchecker;

  AnswerButton(@required this.answerchecker, @required this.answertext);

  @override 
  Widget build(BuildContext context){
    return  Padding(
                  padding: EdgeInsets.only(top: 40,),
                  child: Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        elevation: 10,
                      ),
                      child: Text(answertext),
                      onPressed: ()=> answerchecker(),
                    ),
                  ),        
                );
  }
}