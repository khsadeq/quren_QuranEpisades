



// ignore_for_file: depend_on_referenced_packages, implementation_imports, unused_import, unnecessary_import, unnecessary_new

import 'package:flutter_test/src/widget_tester.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/custometextandtextfilde.dart';

AllTextFiledMyProject textfileds = new AllTextFiledMyProject();

class Setting extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
//   const Setting({Super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffDDDDDD),
        appBar: AppBar(

        backgroundColor:Colors.white ,
          title: const Text("   اضافه دين" , style: TextStyle(color: Color.fromRGBO(33, 150, 243, 1), fontSize: 35, fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(

                Icons.arrow_back_ios_new,
                size: 35,
                color: Colors.blue,
              ),
            )
          ],
        ),


         body:SingleChildScrollView(
  child:Container(
    decoration: const BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),

  width: double.infinity,
  margin: const EdgeInsets.all(15),
  child: Column(children: [
  Container(child:const Text("  اضافه دين لحساب",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),) ,),

 Container(
   width: 300,
   padding: const EdgeInsets.all(10),
  //  color: Colors.white,
  child: const Text("الرجاء ادخال المعلومات اسفله بشكل صحيح  للقيام بعلميه التحويل",style: TextStyle(fontSize: 20),),),

     Container(
      width: 60,
      child: const Divider( thickness: 4,),),
      Container(
        decoration: const BoxDecoration(
            color: Color(0xffdddddd),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),

        margin: const EdgeInsets.only(left: 10,top: 16),
         width: 310,
         height: 34,
        child: Row(children: [
         ElevatedButton(onPressed: () {},
         // ignore: sort_child_properties_last
         child:  const Text(" له", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
       style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 1),
          primary: const Color(0xffdddddd),
         shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
        ) ),

         ),
         const SizedBox(width: 70,),
           ElevatedButton(

             // ignore: sort_child_properties_last
             onPressed: () {}, child: const Text('لنا',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
             style: ElevatedButton.styleFrom(
              fixedSize: const Size(138, 1), backgroundColor: Colors.white,
         shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),

         ),

           ),

      ],),
      ),
        const SizedBox(height:30,),

Container(child:Column(children: [


  Container(

     alignment: const Alignment(0.8, 1),
      // margin: EdgeInsets.only(bottom: 1),


      child: const Text("  الى حساب ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
  Container(

    child: textfileds.textfiled( 330, 1,20.0,"اختر الحساب من هنا")),
    const SizedBox(height: 20,),
    Container(
      // margin: EdgeInsets.only(bottom: 1),
      alignment: const Alignment(0.8, 1),
      child: const Text("   من حساب",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
  Container(

    child: textfileds.textfiled(330,1,20.0)),
    const SizedBox(height: 20,),
    Container(
      // margin: EdgeInsets.only(bottom: 1),
     alignment: const Alignment(0.8, 1),
      child: const Text("     المبلغ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
    Container(

    child:Row(

      children: [

      Container(
        margin: const EdgeInsets.only(left: 40),
        child: const Text("ر.ي" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
     textfileds.textfiled(250,1,20.0)],)
    ),
    const SizedBox(height: 20,),

  Container(

child:Row(children: [

      Container

      ( margin: const EdgeInsets.only(left: 40),
        child: const Text("\$   " ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
     textfileds.textfiled(250,1,20.0)],)
    ),
     const SizedBox(height: 20,),
   Container(
      // margin: EdgeInsets.only(bottom: 1),
     alignment: const Alignment(0.8, 1),
      child: const Text("     الملاحظه",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
    Container(
    child:  textfileds.textfiled(250,10,80.0),





    ),



],
)

,)
])
,)
 ,)
        );
  }
}
