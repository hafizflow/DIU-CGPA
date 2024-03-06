class StudentInfo {
  String? studentId;
  String? fkCampus;
  String? campusName;
  String? studentName;
  String? batchId;
  int? batchNo;
  int? programCredit;
  String? programId;
  String? programName;
  String? progShortName;
  String? programType;
  String? deptShortName;
  String? departmentName;
  String? facultyName;
  String? facShortName;
  String? semesterId;
  String? semesterName;
  String? shift;

  StudentInfo(
      {this.studentId,
      this.fkCampus,
      this.campusName,
      this.studentName,
      this.batchId,
      this.batchNo,
      this.programCredit,
      this.programId,
      this.programName,
      this.progShortName,
      this.programType,
      this.deptShortName,
      this.departmentName,
      this.facultyName,
      this.facShortName,
      this.semesterId,
      this.semesterName,
      this.shift});

  StudentInfo.fromJson(Map<String, dynamic> json) {
    studentId = json['studentId'];
    fkCampus = json['fkCampus'];
    campusName = json['campusName'];
    studentName = json['studentName'];
    batchId = json['batchId'];
    batchNo = json['batchNo'];
    programCredit = json['programCredit'];
    programId = json['programId'];
    programName = json['programName'];
    progShortName = json['progShortName'];
    programType = json['programType'];
    deptShortName = json['deptShortName'];
    departmentName = json['departmentName'];
    facultyName = json['facultyName'];
    facShortName = json['facShortName'];
    semesterId = json['semesterId'];
    semesterName = json['semesterName'];
    shift = json['shift'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['studentId'] = studentId;
    data['fkCampus'] = fkCampus;
    data['campusName'] = campusName;
    data['studentName'] = studentName;
    data['batchId'] = batchId;
    data['batchNo'] = batchNo;
    data['programCredit'] = programCredit;
    data['programId'] = programId;
    data['programName'] = programName;
    data['progShortName'] = progShortName;
    data['programType'] = programType;
    data['deptShortName'] = deptShortName;
    data['departmentName'] = departmentName;
    data['facultyName'] = facultyName;
    data['facShortName'] = facShortName;
    data['semesterId'] = semesterId;
    data['semesterName'] = semesterName;
    data['shift'] = shift;
    return data;
  }
}
