



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';

// import 'widgets/custometextandtextfilde.dart';

// AllTextFiledMyProject textfileds = new AllTextFiledMyProject();

// class resv extends StatelessWidget {
//   const resv({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:  Color(0xffDDDDDD),
//         appBar: AppBar(

//         backgroundColor:Colors.white ,
//           title: Text("   استلام دين" , style: TextStyle(color: Color.fromRGBO(33, 150, 243, 1), fontSize: 35, fontWeight: FontWeight.bold),),
//           centerTitle: true,
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(

//                 Icons.arrow_back_ios_new,
//                 size: 35,
//                 color: Colors.blue,
//               ),
//             )
//           ],
//         ),


//          body:SingleChildScrollView(
//   child:Container(
//     decoration: BoxDecoration(
//             color: Colors.white,
//           borderRadius: BorderRadius.all(Radius.circular(30))
//         ),

//   width: double.infinity,
//   margin: EdgeInsets.all(15),
//   child: Column(children: [
//   Container(child:Text("  اضافه دين لحساب",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),) ,),

//  Container(
//    width: 300,
//    padding: EdgeInsets.all(10),
//   //  color: Colors.white,
//   child: Text("الرجاء ادخال المعلومات اسفله بشكل صحيح  للقيام بعلميه التسديد",style: TextStyle(fontSize: 20),),),

//      Container(
//       width: 60,
//       child: Divider( thickness: 4,),),

//         SizedBox(height:30,),

// Container(child:Column(children: [


//   Container(

//      alignment: Alignment(0.8, 1),
//       // margin: EdgeInsets.only(bottom: 1),


//       child: Text("  الى حساب ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
//   Container(

//     child: textfileds.textfiled( 330, 1,20.0,"اختر الحساب من هنا")),
//     SizedBox(height: 20,),
//     Container(
//       // margin: EdgeInsets.only(bottom: 1),
//       alignment: Alignment(0.8, 1),
//       child: Text("   من حساب",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
//   Container(

//     child: textfileds.textfiled(330,1,20.0)),
//     SizedBox(height: 20,),
//     Container(
//       // margin: EdgeInsets.only(bottom: 1),
//      alignment: Alignment(0.8, 1),
//       child: Text("     المبلغ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
//     Container(

//     child:Row(

//       children: [

//       Container(
//         margin: EdgeInsets.only(left: 40),
//         child: Text("ر.ي" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
//      textfileds.textfiled(250,1,20.0)],)
//     ),
//     SizedBox(height: 20,),

//   Container(

// child:Row(children: [

//       Container

//       ( margin: EdgeInsets.only(left: 40),
//         child: Text("\$   " ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
//      textfileds.textfiled(250,1,20.0)],)
//     ),
//      SizedBox(height: 20,),
//    Container(
//       // margin: EdgeInsets.only(bottom: 1),
//      alignment: Alignment(0.8, 1),
//       child: Text("     الملاحظه",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), ),
//     Container(
//     child:  textfileds.textfiled(250,10,80.0),





//     ),



// ],
// )

// ,)
// ])
// ,)
//  ,)
//         );
//   }
// }
