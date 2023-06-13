import 'package:flutter/material.dart';
import 'package:peaple_quran/main.dart';

class tttttdt extends StatefulWidget {
  const tttttdt({super.key});

  @override
  State<tttttdt> createState() => _tttttdtState();
}

class _tttttdtState extends State<tttttdt> {
  @override
  Widget build(BuildContext context) {
    Row _head =  Row(
      children:[ Text('wshjqbg jnAJ')],
    );
    TableRow _tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("data"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("datann"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("datajhh"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("datahhs"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("dataggdg"),
      ),
    ]);
    return Scaffold(
        appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(

          children: [
              Row(
                  children: [

                  _head
              ],),
            Table(
              border: TableBorder.all(),
              defaultColumnWidth: const FixedColumnWidth(90),
              children: <TableRow>[  _tableRow, _tableRow, _tableRow, _tableRow],
            ),
          ],
        ),
      ),
    );
  }
}
// import 'dart:developer';
// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../component/progress.dart';
// import '../config.dart';
// import '../provider/auth.dart';
// import 'login_data.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final _formKey = GlobalKey<FormState>();
//   late String _email;
//   late String _password;

//   bool isloading = false;
//   TextEditingController txtmobile = new TextEditingController();
//   TextEditingController txtpwd = new TextEditingController();
//   void login() async {
//     Provider.of<auth>(context, listen: false).login(credentials: {
//       'email': _email,
//       'password': _password,
//     });
//     // if (!await checkConnection()) {
//     //   Toast.show("Not connected Internet", context,
//     //       duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
//     // }
//     void submit() {
//       log(_email);
//       log(_password);
//     }
// //     if (txtmobile.text.isNotEmpty && txtpwd.text.isNotEmpty) {
// //       isloading = true;
// //       load.add_loading();
// //       bool res = await loginUsers(txtmobile.text, txtpwd.text, context);
// //       isloading = res;
// //       load.add_loading();
// //     }
// //   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey[100],
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0.0,
//           leading: IconButton(
//               icon: Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.black,
//               ),
//               onPressed: () => Navigator.of(context).pop()),
//         ),
//         body: Directionality(
//           key: _formKey,
//           textDirection: TextDirection.rtl,
//           child: Container(
//             margin: EdgeInsets.all(10.0),
//             child: Column(
//               children: <Widget>[
//                 Expanded(
//                     child: Form(
//                   child: ListView(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.only(bottom: 35.0),
//                         child: Text(
//                           "سجل الدخول الى حسابك من هنا ",
//                           style: TextStyle(fontSize: 25.0, color: Colors.red),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(bottom: 10.0),
//                         padding: EdgeInsets.only(left: 20.0, right: 20.0),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(25.0)),
//                         child: TextFormField(
//                           controller: txtmobile,
//                           decoration: InputDecoration(
//                               hintText: "الموبايل", border: InputBorder.none),
//                           //   validator: (String value) {
//                           //     if (value.isEmpty){
//                           //       return "الرجاء ادخال الموبايل";
//                           //     }
//                           //     return null;
//                           //   },
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(bottom: 10.0),
//                         padding: EdgeInsets.only(left: 20.0, right: 20.0),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(25.0)),
//                         child: Row(
//                           children: <Widget>[
//                             Expanded(
//                               child: TextFormField(
//                                 controller: txtpwd,
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                     hintText: "كلمة المرور",
//                                     border: InputBorder.none),
//                                 // // ignore: body_might_complete_normally_nullable
//                                 // validator: (String value) {
//                                 //   if (value.isEmpty || value.length < 6) {
//                                 //     return "الرجاء ادخال كلمة المرور";
//                                 //   }
//                                 // },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // Consumer<LoadingControl>(builder: (context, load, child) {
//                       //   return isloading
//                       //       ? circularProgress()
//                       //       :
//                        MaterialButton(
//                                 onPressed: () {
//                                   _formKey.currentState!.save();
//                                   this.login();
//                                   //   login(context, load);
//                                 },
//                                 child: Container(
//                                   alignment: Alignment.center,
//                                   width: MediaQuery.of(context).size.width,
//                                   child: Text(
//                                     "دخول",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 20.0),
//                                   ),
//                                   margin:
//                                       EdgeInsets.only(bottom: 10.0, top: 30.0),
//                                   padding: EdgeInsets.all(2.0),
//                                   decoration: BoxDecoration(
//                                       color: Colors.red,
//                                       borderRadius:
//                                           BorderRadius.circular(25.0)),
//                                 )
//   )
//                     ],
//                   ),
//                 )
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
