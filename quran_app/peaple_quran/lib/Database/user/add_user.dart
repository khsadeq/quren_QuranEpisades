// ignore_for_file: non_constant_identifier_names

import 'dart:convert' as convert;
// import 'package:sky_engine/_http/http.dart' as http;



class Get_uset {
  var http;



  getUser_con() async {
    // var url = 'http://127.0.0.1:8000/api/auth/register';
var url = Uri.https('http://127.0.0.1:8000/api/', 'whatsit/create');
var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');

print(await http.read(Uri.https('example.com', 'foobar.txt')));
    // var response = await http.Git(url);
    // if (response.statusCode == 200) {
    //   var jsonResponse = convert.jsonDecode(response.body);
    //   var data = jsonResponse['data'];
    //   print('Number of  books about http: $data.');
    // } else {
    //   print('refdijkjkfdkjf: ${response.statusCode}.');
    // }
  }
}
