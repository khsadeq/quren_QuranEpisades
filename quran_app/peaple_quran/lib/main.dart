// ignore_for_file: unnecessary_new, non_constant_identifier_names, camel_case_types

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:peaple_quran/Database/provider/auth.dart';
import 'package:peaple_quran/widgets/navDrawer.dart';
import 'package:provider/provider.dart';

//import 'Database/provider/auth.dart';
// import 'package:peaple_quran/Database/provider/auth.dart';

// import 'widgets/customcontaineraccuont.dart';
// import '../http-0.13.6/lib/add.dart';
// import '../http-0.13.6/lib/reve.dart';
// import '../http-0.13.6/lib/widgets/customcontaineraccuont.dart';

void main() async {

   
  final dio = Dio();
  // final// mobile response = await dio.get('http://10.0.2.2:8000/api/users');// emualtore 127
  // final response = await dio.get('http://10.0.253.3:8000/api/users');// mobile 

  // print('testing api');

  // print(response);

  runApp(ChangeNotifierProvider(
    create: (_) => auth(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar: AppBar()),
    );
  }
}

class myhomepage extends StatefulWidget {
  const myhomepage({Key? key}) : super(key: key);

  @override
  _myhomepageState createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavDrawer(),
      body: Center(
        child: Consumer<auth>(
// ignore: avoid_types_as_parameter_names
          builder: (context, auth, child) {
            if (!auth.Authenticated) {
              return Text('hhjjj');
            } else {
              return Text("data yy");
            }
          },
        ),
      ),
    );
  }
}

class rrsbb extends StatefulWidget {
  const rrsbb({Key? key}) : super(key: key);

  @override
  _rrsbbState createState() => _rrsbbState();
}

class _rrsbbState extends State<rrsbb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<auth>(
        builder: (context, auth, child) {
          if (auth.Authenticated) {
            return Text("yyyy uuuu");
          } else {
            return Text("yyyy uuuu");
          }
        },
      ),
    );
  }
}
// // ignore: camel_case_types
// class saggelstudent extends StatelessWidget {
//   const saggelstudent({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 203, 207, 203),
//       appBar: AppBar(

//           title: Row(
//             children: const [
//               SizedBox(
//                 width: 200,
//               ),
//               Text("الحسابات(4)")
//             ],
//           ),
//           leading: Row(
//             children: [
//               IconButton(
//                   icon: const Icon(Icons.sync_alt_outlined), onPressed: () {}),
//                   // ignore: prefer_const_constructors
//                   SizedBox(width: 15,),
//               IconButton(
//                   icon: const Icon(Icons.cast_rounded), onPressed: () {}),
//             ],
//           )

//           //  tab:
//           //     IconButton(icon: Icon(Icons.sync_alt_outlined), onPressed: () {}),
//           // actions: [
//           //   IconButton(icon: const Icon(Icons.navigate_before), onPressed: () {}),

//           //   ],
//           ),
//       // endDrawer: Drawer(),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         padding: const EdgeInsets.all(10),
//         physics: const BouncingScrollPhysics(),
//         // reverse: true,
//         children: [
//           // ListView(

//           //   //
//           //   children: [

//           //   ],
//           // )
//           const SizedBox(
//             height: 10,
//           ),
//           Container( decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//            ),


//             width: 300,
//             height: 70,

//             child: Column(
//               children: [
//                 TextFormField(

//                   //  autocorrect: true,

//                   decoration: new InputDecoration(

//                     // enabled: true,
//                     label: Row(
//                       children: [
//                          const SizedBox(
//                           width: 190,
//                         ),
//                         const Text("ابحت عن حساب هنا"),
//                       ],
//                     ),

//                     icon: const Icon(Icons.search),
//                     disabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           const SizedBox(
//             height: 10,
//           ),

//           x,
//           SizedBox(height: 30,),
//           x
//           // Container(
//           //   color: Colors.white,
//           //   padding: const EdgeInsets.all(10),
//           //   margin: const EdgeInsets.all(10),
//           //   child: Column(
//           //     children: [

//           //       Container(
//           //         child: Row(
//           //           children: const [
//           //             Icon(Icons.perm_identity),
//           //             SizedBox(
//           //               width: 150,
//           //             ),
//           //             Text('عصام البحري'),
//           //           ],
//           //         ),
//           //       ),

//           //       const Divider(
//           //         height: 15,
//           //         color: Colors.white,
//           //       ),

//           //     ],
//           //   ),
//           // ),
//           // Container(color: Colors.white,
//           //   padding: EdgeInsets.all(10),
//           //   margin: EdgeInsets.all(10),
//           //   child: Row(children: [
//           //     Icon(Icons.perm_identity),
//           //            SizedBox(width: 150,),

//           //     Text('عصام البحري'),
//           //   ],)
//           // )


//         ],
//       ),
//     );
//   }
// }
