import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import '../models/response_data.dart';
import 'package:http/http.dart' as http;

class NetworkCaller {
  Future<ResponseData> getRequest(String url) async {
    final Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final decodeResponse = jsonDecode(response.body);
      // log(decodeResponse['msg']);
      return ResponseData(
        isSuccess: true,
        statusCode: response.statusCode,
        responseData: decodeResponse,
      );
    } else {
      return ResponseData(
        isSuccess: false,
        statusCode: response.statusCode,
        responseData: '',
      );
    }
  }
}
