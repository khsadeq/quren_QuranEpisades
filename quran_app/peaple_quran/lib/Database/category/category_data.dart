// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:dashboard/category/edit.dart';
// // import 'package:dashboard/config.dart';
// // import 'package:dashboard/food/food.dart';
// // import 'package:dashboard/pages/provider/loading.dart';
// // ignore_for_file: must_be_immutable, non_constant_identifier_names

// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:peaple_quran/Database/config.dart';
// import 'package:peaple_quran/Database/provider/loading.dart';
// // import 'package:provider/provider.dart';

// import '../function.dart';

// List<CategoryData>? categoryList = null;
// String imageCategory = path_images + "category/";

// class CategoryData {
//   String cat_id;
//   String cat_name;
//   String cat_name_en;
//   String cat_regdate;
//   String cat_thumbnail;

//   CategoryData(
//       {
//       this.cat_id,
//       this.cat_name,
//       this.cat_name_en,
//       this.cat_regdate,
//       this.cat_thumbnail});
// }

// class SingleCategory extends StatelessWidget {
//   int cat_index;
//   CategoryData category;
//   SingleCategory({this.cat_index, this.category});
//   @override
//   Widget build(BuildContext context) {
//     var providerCategory = Provider.of<LoadingControl>(context);
//     var faIcon = FaIcon;
//     var fontAwesomeIcons = FontAwesomeIcons;
//     var cachedNetworkImage = CachedNetworkImage;
//     var raisedButton = RaisedButton;
//     var cachedNetworkImage2 = CachedNetworkImage;
//     return Card(
//       child: Column(
//         children: <Widget>[
//           GestureDetector(
//             onTap: () {
//               categoryList.removeAt(cat_index);
//               deleteData(
//                   "cat_id", category.cat_id, "category/delete_category.php");
//               providerCategory.add_loading();
//             },
//             child: Container(
//               alignment: Alignment.topRight,
//               child: Icon(
//                 Icons.cancel,
//                 color: Colors.red,
//               ),
//             ),
//           ),
//           Container(
//             child: ListTile(
//               leading: category.cat_thumbnail == null ||
//                       category.cat_thumbnail == ""
//                   ? cachedNetworkImage2(
//                       imageUrl: imageCategory + "def.png",
//                       placeholder: (context, url) =>
//                           CircularProgressIndicator(),
//                       errorWidget: (context, url, error) => Icon(Icons.error),
//                     )
//                   : cachedNetworkImage(
//                       imageUrl: imageCategory + category.cat_thumbnail,
//                       placeholder: (context, url) =>
//                           CircularProgressIndicator(),
//                       errorWidget: (context, url, error) => Icon(Icons.error),
//                     ),
//               title: Text(
//                 category.cat_name,
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(category.cat_regdate),
//                     raisedButton(
//                       child: Text("اضافة المأكولات"),
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => new Food(
//                                     cat_id: category.cat_id,
//                                     cat_name: category.cat_name)));
//                       },
//                     )
//                   ]),
//               trailing: Container(
//                 width: 30.0,
//                 child: Row(
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => new EditCategory(
//                                     cat_index: cat_index,
//                                     mycategory: category)));
//                       },
//                       child: Container(
//                         padding: EdgeInsets.all(5),
//                         child: faIcon(
//                           fontAwesomeIcons.edit,
//                           color: Colors.white,
//                           size: 16,
//                         ),
//                         decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.circular(5.0)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
