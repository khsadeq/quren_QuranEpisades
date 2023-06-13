import 'dart:developer';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/progress.dart';
import '../config.dart';
import '../provider/auth.dart';
import 'login_data.dart';

class Loginscrean extends StatefulWidget {
  @override
  _LoginscreanState createState() => _LoginscreanState();
}

class _LoginscreanState extends State<Loginscrean> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  bool isloading = false;
  TextEditingController txtmobile = new TextEditingController();
  TextEditingController txtpwd = new TextEditingController();
  void login() async {
    Provider.of<auth>(context, listen: false).login(credentials: {
      'email': _email,
      'password': _password,
    }
    );
    // var pop = NavigationBar.push(context);
    // if (!await checkConnection()) {
    //   Toast.show("Not connected Internet", context,

    //       duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
    // }
    // void submit() {
    //   log(_email);
    //   log(_password);
    // }
    // if (txtmobile.text.isNotEmpty && txtpwd.text.isNotEmpty) {
    //   isloading = true;
    //   load.add_loading();
    //   bool res = await loginUsers(txtmobile.text, txtpwd.text, context);
    //   isloading = res;
    //   load.add_loading();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop()),
        ),
        body: Directionality(
          key: _formKey,
          textDirection: TextDirection.rtl,
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Form(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 35.0),
                        child: Text(
                          "سجل الدخول الى حسابك من هنا ",
                          style: TextStyle(fontSize: 25.0, color: Colors.red),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: TextFormField(
                          initialValue: "yaqp@gmail.com",
                          // controller: txtmobile,
                          decoration: InputDecoration(
                              hintText: "الموبايل", border: InputBorder.none),
                          onSaved: (Value) {
                            _email = Value!;
                          },
                          // validator: (String value) {
                          //   if (value.isEmpty){
                          //     return "الرجاء ادخال الموبايل";
                          //   }
                          //   return null;
                          // },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                initialValue: "adm1234",

                                // controller: txtpwd,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "كلمة المرور",
                                    border: InputBorder.none),
                                onSaved: (Value) {
                                  _password = Value!;
                                },
                                // ignore: body_might_complete_normally_nullable
                                // validator: (String value) {
                                //   if (value.isEmpty || value.length < 6) {
                                //     return "الرجاء ادخال كلمة المرور";
                                //   }
                                // },
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Consumer<LoadingControl>(builder: (context, load, child) {
                      //   return isloading
                      //       ? circularProgress()
                      //       :
                      MaterialButton(
                          onPressed: () {
                            _formKey.currentState?.save();
                            this.login();
                            //   login(context, load);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "دخول",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            margin: EdgeInsets.only(bottom: 10.0, top: 30.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25.0)),
                          ))
                    ],
                  ),
                )),
              ],
            ),
          ),
        ));
  }
}
