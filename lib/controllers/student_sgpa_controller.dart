import 'dart:convert';
import 'dart:developer';

import 'package:diu_cgpa_provider/models/student_sgpa.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../models/response_data.dart';
import '../services/network_caller.dart';
import '../utility/urls.dart';

class StudentSgpaController extends ChangeNotifier {
  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  bool _inProgress = false;
  bool get inProgress => _inProgress;

  StudentSgpa _studentSgpa = StudentSgpa();
  StudentSgpa get studentSgpa => _studentSgpa;

  List<dynamic> jsonData = [];

  Future<void> getStudentSgpa() async {
    // _inProgress = true;
    // notifyListeners();
    //
    // ResponseData response = await NetworkCaller().getRequest(Urls.studentSgpa);
    //
    // if (response.isSuccess) {
    //   _studentSgpa = StudentSgpa.fromJson(response.responseData[0]);
    // } else {
    //   _errorMessage = response.errorMessage;
    // }
    //
    // _inProgress = false;
    // notifyListeners();

    try {
      Response response = await http.get(Uri.parse(Urls.studentSgpa));
      if (response.statusCode == 200) {
        log(response.body);
        jsonData = jsonDecode(response.body);
        log(jsonData.toString());

        // _studentSgpa = StudentSgpa.fromJson(jsonData[0]);
        // log(_studentSgpa.toString());
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
