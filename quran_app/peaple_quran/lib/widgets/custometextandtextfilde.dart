import 'package:flutter/material.dart';

class  AllTextFiledMyProject {
  String hintna = "";
  Column textlabel_textfilde(  double width,[  maxline,  marginleft, String lable = "" ,hintna]) {
    return Column(
      children: [
        Container(
          width: double.infinity,

        
            margin: EdgeInsets.only(left: 20,right: 20),
          child: Text(
            lable,
            style: TextStyle(fontSize: 18),
            
          ),
          
          ),
             textfiled(  width ,maxline, marginleft, hintna)
        // //  SizedBox(
        // //   height: 10,
        // //   ),
    
      ],
    );
  }

   Container textfiled(  double width, [maxline, marginleft,hintna] ) {
     return Container(
        width: width,
         margin: EdgeInsets.only(left: marginleft,right:20),
        decoration: BoxDecoration(
            color: Color(0xffdddddd),
            borderRadius: BorderRadius.circular(10),
            //  border: Border.all()
            ),
        child: TextField(
          maxLines: maxline,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintna,
              hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ));
  }
}
