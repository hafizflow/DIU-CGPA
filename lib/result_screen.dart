import 'package:diu_cgpa_provider/controllers/semester_list_controller.dart';
import 'package:diu_cgpa_provider/controllers/student_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/student_sgpa_controller.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<StudentSgpaController>(context, listen: false)
          .getStudentSgpa();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DIU CGPA'),
        ),
        body: Consumer<StudentSgpaController>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.jsonData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        borderOnForeground: false,
                        elevation: 2,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 24,
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.grey,
                            child: Text(
                              value.jsonData[index]['gradeLetter'],
                              style: const TextStyle(fontSize: 24),
                            ),
                          ),
                          title: Text(
                            value.jsonData[index]['courseTitle'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 24),
                          ),
                          trailing: CircleAvatar(
                            radius: 24,
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black54,
                            child: Text(
                              value.jsonData[index]['pointEquivalent']
                                  .toString(),
                              style: const TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}
