import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BannerImage extends StatelessWidget{

  String image_link;

  BannerImage(@required this.image_link);
  
  @override
   
  Widget build(BuildContext context){
    return Container(
      height: 350,
      width: 350,
      child: Image.network(image_link),
    );
  }
}