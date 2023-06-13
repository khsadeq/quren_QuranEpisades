// import 'dart:io';

// // import 'package:dashboard/pages/component/progress.dart';
// // import 'package:dashboard/pages/provider/loading.dart';
// // import 'package:dashboard/pages/category/category.dart';
// import 'package:flutter/material.dart';
// // import 'package:dashboard/pages/config.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:provider/provider.dart';
// // import 'package:toast/toast.dart';
// // import 'package:http/http.dart' as http;
// import 'package:async/async.dart';
// // import '../function.dart';
// import 'package:path/path.dart';
// import 'package:peaple_quran/Database/category/category.dart';
// import 'package:peaple_quran/Database/component/progress.dart';
// import 'package:peaple_quran/Database/function.dart';

// import '../config.dart';
// import '../provider/loading.dart';

// class AddCategory extends StatefulWidget {
//   @override
//   _AddCategoryState createState() => _AddCategoryState();
// }

// class _AddCategoryState extends State<AddCategory> {
//   bool isloading = false;

//   // ignore: prefer_final_fields
//   var _formKey = GlobalKey<FormState>();
//   // ignore: non_constant_identifier_names
//   TextEditingController txtcat_name = new TextEditingController();
//   TextEditingController txtcat_name_en = new TextEditingController();

//   saveData(context, LoadingControl load) async {
//     if (!await checkConnection()) {
//       Toast.show("Not connected Internet", context,
//           duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
//     }
//     bool myvalid = _formKey.currentState.validate();
//     load.add_loading();
//     if (txtcat_name.text.isNotEmpty &&
//         txtcat_name_en.text.isNotEmpty &&
//         myvalid) {
//       isloading = true;
//       load.add_loading();
//       Map arr = {
//         "cat_name": txtcat_name.text,
//         "cat_name_en": txtcat_name_en.text,
//       };
//       bool res = await uploadFileWithData(_image, arr,
//           "category/insert_category.php", context, () => Category(), "insert");
//       /*await createData(
//           arr, "category/insert_category.php", context, () => Category());*/

//       isloading = res;
//       load.add_loading();
//     } else {
//       Toast.show("Please fill data", context,
//           duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
//     }
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     txtcat_name.dispose();
//     txtcat_name_en.dispose();
//   }

//   late File _image;
//   final picker = ImagePicker();
//   Future getImageGallery() async {
//     var image = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       if (image != null) {
//         _image = File(image.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   Future getImageCamera() async {
//     var image = await picker.getImage(source: ImageSource.camera);
//     setState(() {
//       if (image != null) {
//         _image = File(image.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   void showSheetGallery(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext bc) {
//           return Container(
//               child: Wrap(
//             children: [
//               new ListTile(
//                 leading: new Icon(Icons.image),
//                 title: new Text("معرض الصور"),
//                 onTap: () {
//                   getImageGallery();
//                 },
//               ),
//               new ListTile(
//                 leading: new Icon(Icons.camera),
//                 title: new Text("كاميرا"),
//                 onTap: () {
//                   getImageCamera();
//                 },
//               ),
//             ],
//           ));
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var consumer = Consumer;
//     return Scaffold(
//         backgroundColor: Colors.grey[100],
//         appBar: AppBar(
//           backgroundColor: primaryColor,
//           title: const Text("اضافة تصنيف جديد"),
//           centerTitle: true,
//         ),
//         body: Directionality(
//           textDirection: TextDirection.rtl,
//           child: Container(
//             margin: const EdgeInsets.all(10.0),
//             padding: const EdgeInsets.only(top: 30),
//             child: Column(
//               children: <Widget>[
//                 consumer<LoadingControl>(builder: (context, load, child) {
//                   return Expanded(
//                     child: Form(
//                       key: _formKey,
//                       child: ListView(
//                         children: <Widget>[
//                           Container(
//                             margin: const EdgeInsets.only(bottom: 10.0),
//                             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(25.0)),
//                             child: TextFormField(
//                               controller: txtcat_name,
//                               decoration: const InputDecoration(
//                                   hintText: "اسم التصنيف",
//                                   border: InputBorder.none),
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   print("enyter name");
//                                   return "الرجاء ادخال الاسم ";
//                                 }
//                               },
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.only(bottom: 10.0),
//                             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(25.0)),
//                             child: TextFormField(
//                               controller: txtcat_name_en,
//                               decoration: const InputDecoration(
//                                   hintText: "الاسم بالانكليزي",
//                                   border: InputBorder.none),
//                               validator: (String value) {
//                                 if (value.isEmpty) {
//                                   return "الرجاء ادخال الاسم ";
//                                 }
//                               },
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.only(bottom: 10.0),
//                             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                             child: IconButton(
//                                 icon: Icon(
//                                   Icons.image,
//                                   size: 60.0,
//                                   color: Colors.orange[400],
//                                 ),
//                                 onPressed: () {
//                                   showSheetGallery(context);
//                                 }),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.all(15.0),
//                             child: _image == null
//                                 ? new Text("الصورة غير محددة")
//                                 : new Image.file(
//                                     _image,
//                                     width: 150.0,
//                                     height: 150.0,
//                                     fit: BoxFit.cover,
//                                   ),
//                           ),
//                           isloading
//                               ? circularProgress()
//                               : MaterialButton(
//                                   onPressed: () {
//                                     saveData(context, load);
//                                   },
//                                   child: Container(
//                                     alignment: Alignment.center,
//                                     width: MediaQuery.of(context).size.width,
//                                     child: const Text(
//                                       "حفظ",
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 20.0),
//                                     ),
//                                     margin: const EdgeInsets.only(
//                                         bottom: 10.0, top: 30.0),
//                                     padding: const EdgeInsets.all(2.0),
//                                     decoration: BoxDecoration(
//                                         color: Colors.red,
//                                         borderRadius:
//                                             BorderRadius.circular(25.0)),
//                                   )),
//                         ],
//                       ),
//                     ),
//                   );
//                 }),
//               ],
//             ),
//           ),
//         ));
//   }
// }
