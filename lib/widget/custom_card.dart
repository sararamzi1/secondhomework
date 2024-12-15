import 'package:flutter/cupertino.dart';
import 'package:sechw/helpers/constans.dart';
import 'package:sechw/themes/style.dart';
import '../helpers/painters.dart';

class CustomCard extends StatelessWidget{
  final Widget child;
  const CustomCard({Key?key,required this.child}):super(key: key);
  @override
  Widget build(BuildContext context){
    return ClipPath(
      clipper:HeartClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(defaultMargin),
        height: MediaQuery.of(context).size.height/2,
        child: Padding(padding: const EdgeInsets.all(29.0),
        ),

      ),


    );




  }



}