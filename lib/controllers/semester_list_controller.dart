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
  List<dynamic> semesterCode = [];

  Future<void> getSemesterList() async {
    try {
      Response response = await http.get(Uri.parse(Urls.semesterList));
      if (response.statusCode == 200) {
        // List<dynamic> jsonData = jsonDecode(response.body);

        semesterList = SemesterList.fromJson(jsonDecode(response.body)[0]);

        // semesterCode = jsonData
        //     .map((semester) => int.parse(semester['semesterId']))
        //     .toList();

        // log(response.body);
        // log(semesterCode.toString());
        log(semesterList.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
