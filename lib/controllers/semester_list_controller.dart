import 'dart:convert';
import 'dart:developer';

import 'package:diu_cgpa_provider/models/semster_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../utility/urls.dart';

class SemesterListController extends ChangeNotifier {
  bool isLoading = true;
  String error = '';
  SemesterList semesterList = SemesterList();
  List<int> semesterCode = [];

  getSemesterList() async {
    try {
      Response response = await http.get(Uri.parse(Urls.semesterList));
      if (response.statusCode == 200) {
        // log(response.body);
        // semesterList = SemesterList.fromJson(jsonDecode(response.body)[0]);

        List<dynamic> jsonData = jsonDecode(response.body);

        semesterCode = jsonData
            .map((semester) => int.parse(semester['semesterId']))
            .toList();

        log(semesterCode.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
