class StudentSgpa {
  String? semesterId;
  String? semesterName;
  int? semesterYear;
  String? studentId;
  String? courseId;
  String? customCourseId;
  String? courseTitle;
  int? totalCredit;
  int? pointEquivalent;
  String? gradeLetter;
  double? cgpa;
  String? blocked;
  String? tevalSubmitted;
  String? teval;

  StudentSgpa({
    this.semesterId,
    this.semesterName,
    this.semesterYear,
    this.studentId,
    this.courseId,
    this.customCourseId,
    this.courseTitle,
    this.totalCredit,
    this.pointEquivalent,
    this.gradeLetter,
    this.cgpa,
    this.blocked,
    this.tevalSubmitted,
    this.teval,
  });

  StudentSgpa.fromJson(Map<String, dynamic> json) {
    semesterId = json['semesterId'];
    semesterName = json['semesterName'];
    semesterYear = json['semesterYear'];
    studentId = json['studentId'];
    courseId = json['courseId'];
    customCourseId = json['customCourseId'];
    courseTitle = json['courseTitle'];
    totalCredit = json['totalCredit'];
    pointEquivalent = json['pointEquivalent'];
    gradeLetter = json['gradeLetter'];
    cgpa = json['cgpa'];
    blocked = json['blocked'];
    tevalSubmitted = json['tevalSubmitted'];
    teval = json['teval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['semesterId'] = semesterId;
    data['semesterName'] = semesterName;
    data['semesterYear'] = semesterYear;
    data['studentId'] = studentId;
    data['courseId'] = courseId;
    data['customCourseId'] = customCourseId;
    data['courseTitle'] = courseTitle;
    data['totalCredit'] = totalCredit;
    data['pointEquivalent'] = pointEquivalent;
    data['gradeLetter'] = gradeLetter;
    data['cgpa'] = cgpa;
    data['blocked'] = blocked;
    data['tevalSubmitted'] = tevalSubmitted;
    data['teval'] = teval;
    return data;
  }
}
