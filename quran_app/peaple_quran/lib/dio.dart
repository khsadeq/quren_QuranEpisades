import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
Dio dio ()  {
var dio = Dio(BaseOptions(
    baseUrl: 'http://10.0.2.2:8000/api/',
    responseType: ResponseType.plain,
    headers: {
        'accept':'application/json',
        'content-type':'application/json',
    }
)

    );



return dio;
}
