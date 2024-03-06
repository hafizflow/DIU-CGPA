import 'package:diu_cgpa_provider/controllers/student_info_controller.dart';
import 'package:diu_cgpa_provider/controllers/student_sgpa_controller.dart';
import 'package:diu_cgpa_provider/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/semester_list_controller.dart';
import 'home_screen.dart';

void main() {
  runApp(const DiuCoverPageApp());
}

class DiuCoverPageApp extends StatelessWidget {
  const DiuCoverPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SemesterListController>(
          create: (context) => SemesterListController(),
        ),
        ChangeNotifierProvider<StudentInfoController>(
          create: (context) => StudentInfoController(),
        ),
        ChangeNotifierProvider<StudentSgpaController>(
          create: (context) => StudentSgpaController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: const ResultScreen(),
      ),
    );
  }
}
