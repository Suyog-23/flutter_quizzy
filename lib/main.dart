import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizzy/components/answerbuttons.dart';
import 'components/questiontext.dart';
import 'components/answerbuttons.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override 
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  // var quest_lst = [
  //   'The previous name of Facebook when it was released in Harvard was?',
  //   'The first GUI based personal computer was presented by?',
  //   'Google offered it\'s algorithm to Yahoo for exchange of?',
  //   'Apple sued this project by Adobe _______ as a revange.',
  //   'This cloud is bigger than Google Cloud + AWS combined.',
  // ];

  // var image_links = [
  //   'https://s3.amazonaws.com/media.thecrimson.com/photos/2004/02/18/123348_1194988.jpg',
  //   'https://cdn.vox-cdn.com/thumbor/weq16adozY-InDS7ZKgkRNXg9bY=/2x0:607x403/1400x1050/filters:focal(2x0:607x403):format(jpeg)/cdn.vox-cdn.com/assets/2061339/steve-jobs-macintosh.jpg',
  //   'https://cdn.vox-cdn.com/thumbor/K25IV_KiUMPeTCKTAk7bRg-V1Fw=/0x0:4024x2683/1200x675/filters:focal(820x567:1462x1209)/cdn.vox-cdn.com/uploads/chorus_image/image/65827722/528779824.jpg.0.jpg',
  //   'https://www.mercurynews.com/wp-content/uploads/2016/08/20100430_055820_adobeapple.jpg?w=620',
  //   'https://i.ytimg.com/vi/tbItn2ec67A/maxresdefault.jpg',
  // ];

  // var answertext = [
  //   [
  //     'Facebook',
  //     'FaceTime',
  //     'FaceMash',
  //   ],
  //   [
  //     'Xerox',
  //     'Apple',
  //     'Microsoft',
  //   ],
  //   [
  //     '\$10 Million ',
  //     '\$5 Million',
  //     '\$12 Million',
  //   ],
  //   [
  //     'Acrobat',
  //     'Flash',
  //     'AfterEffects',
  //   ],
  //   [
  //     'Watson Cloud',
  //     'Linode',
  //     'Azure',
  //   ],
  // ];

  var allcontent = [
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


  int i=0;

  void changeQuestion(){
    print('This works');
    setState(() {
       if(i>=2){
         i=0;
       }
       else{
         i+=1;
       }
    });
  }


  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(

          // AppBar starts --------------------------------------------------

          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text('Quizzy'),),
          ),

          // AppBar ends -----------------------------------------------------

          // MainBody starts --------------------------------------------------
          
          body: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [ Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  Container(
                    height: 350,
                    width: 350,
                    child: Image.network(allcontent[i]['image'] as String),
                  ),
            
                  QuestionText.itlaic(allcontent[i]['question'] as String), // Questions
            
                  // Buttons
                  AnswerButton(changeQuestion, allcontent[i]['answers']),

                  AnswerButton(changeQuestion, allcontent[i]['answers']),

                  AnswerButton(changeQuestion, allcontent[i]['answers']), 
                  
                ],
              ),
              ],
            ),
          ),

          // MainBody ends -----------------------------------------------------


        ),
        ),
    );
  }
}