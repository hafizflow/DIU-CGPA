import 'dart:developer';

import 'package:diu_cgpa_provider/models/response_data.dart';
import 'package:diu_cgpa_provider/models/student_info.dart';
import 'package:diu_cgpa_provider/services/network_caller.dart';
import 'package:flutter/material.dart';

import '../utility/urls.dart';

class StudentInfoController extends ChangeNotifier {
  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  bool _inProgress = false;
  bool get inProgress => _inProgress;

  StudentInfo _studentInfo = StudentInfo();
  StudentInfo get studentInfo => _studentInfo;

  Future<void> getStudentInfo() async {
    _inProgress = true;
    notifyListeners();

    ResponseData response = await NetworkCaller().getRequest(Urls.studentInfo);

    if (response.isSuccess) {
      _studentInfo = StudentInfo.fromJson(response.responseData);
    } else {
      _errorMessage = response.errorMessage;
    }

    _inProgress = false;
    notifyListeners();
  }
}
