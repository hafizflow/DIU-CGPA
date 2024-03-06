import 'package:diu_cgpa_provider/controllers/semester_list_controller.dart';
import 'package:diu_cgpa_provider/controllers/student_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider =
          Provider.of<StudentInfoController>(context, listen: false);
      provider.getStudentInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DIU CGPA'),
        ),
        body: Consumer<StudentInfoController>(
          builder: (context, value, child) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(value.studentInfo.studentName ?? ''),
                        Text(value.studentInfo.studentId ?? ''),
                        Text(value.studentInfo.departmentName ?? ''),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
