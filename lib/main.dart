import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizzy/components/answerbuttons.dart';
import 'components/questiontext.dart';
import 'components/answerbuttons.dart';
import 'components/banner_image.dart';
import 'section/quiz.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override 
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  int i=0;

  void changeQuestion(){
    print('This works');
    setState(() {     
         i+=1;
    });
  }


  dynamic answers_show(String answers){
    return AnswerButton(changeQuestion, answers);
  }

  @override 
  Widget build(BuildContext context){

     const allcontent = [
    {
      'question': 'The previous name of Facebook when it was released in Harvard was?',
      'image': 'https://s3.amazonaws.com/media.thecrimson.com/photos/2004/02/18/123348_1194988.jpg',
      'answers':['Facebook', 'FaceTime', 'Facemash'],
    },

    {
      'question': 'The first GUI based personal computer was presented by?',
      'image': 'https://cdn.vox-cdn.com/thumbor/weq16adozY-InDS7ZKgkRNXg9bY=/2x0:607x403/1400x1050/filters:focal(2x0:607x403):format(jpeg)/cdn.vox-cdn.com/assets/2061339/steve-jobs-macintosh.jpg',
      'answers':['Xerox', 'Apple', 'Microsoft'],
    },

    {
      'question': 'Google offered it\'s algorithm to Yahoo for exchange of?',
      'image': 'https://cdn.vox-cdn.com/thumbor/K25IV_KiUMPeTCKTAk7bRg-V1Fw=/0x0:4024x2683/1200x675/filters:focal(820x567:1462x1209)/cdn.vox-cdn.com/uploads/chorus_image/image/65827722/528779824.jpg.0.jpg',
      'answers':['\$ 10 Million', '\$ 5 Million', '\$ 12 Million'],
    },

  ];

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(

          // AppBar starts --------------------------------------------------
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text('Quizzy'),),
          ),

          // AppBar ends -----------------------------------------------------

          // MainBody starts -------------------------------------------------
          
          body:Container(
             child: ListView(
              scrollDirection: Axis.vertical,

              //  ternary checker for quesions 
             children: [  i < allcontent.length ? Quiz(allcontent[i]['image'] as String, allcontent[i]['question'] as String, allcontent[i]['answers'] as List<String>, answers_show)
            //  else if no questions show the score
              : Padding(padding: const EdgeInsets.only(top: 370),
                child: Center(child: QuestionText('Your score: '),),
              ),
              ], 
            ),
          ), 

          // MainBody ends ------------------------------------------------------


        ),
        ),
    );
  }
}